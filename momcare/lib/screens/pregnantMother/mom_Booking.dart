import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AppointmentsScreen extends StatefulWidget {
  final String userID;

  const AppointmentsScreen({Key? key, required this.userID}) : super(key: key);

  @override
  State<AppointmentsScreen> createState() => _AppointmentsScreenState();
}

class _AppointmentsScreenState extends State<AppointmentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointments'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('appointments')
            .where('userID', isEqualTo: widget.userID)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Text('No appointments found for this user.');
          }

          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              final data = document.data() as Map<String, dynamic>;

              final String appointmentID = document.id;
              final String name = data['name'];
              final DateTime selectedDate = data['selectedDate'].toDate();
              final String? selectedTime = data['selectedTime'];
              final String place = data['place'];
              bool isAccepted = data['isAccepted'] ?? false;

              return CheckboxListTile(
                  title: Column(
                    children: [
                      Text(name),
                      Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Date: ${selectedDate.toString()}'),
                    Text('Time: ${selectedTime ?? 'Not specified'}'),
                    Text('Place: $place'),
                  ],
                ),
                    ],
                  ),
                  value: isAccepted,
                  onChanged: (bool? value) {
                    try {
                      FirebaseFirestore.instance.collection('midwife').doc(FirebaseAuth.instance.currentUser!.uid).collection('appointments').doc(appointmentID).update({'isAccepted': value}).then((value) {
                      print('Appointment updated successfully');
                    }).catchError((error) {
                      print('Error updating appointment: $error');
                    });
                      FirebaseFirestore.instance
                        .collection('appointments')
                        .doc(appointmentID)
                        .update({'isAccepted': value})
                        .then((value) {
                      print('Appointment updated successfully');
                    }).catchError((error) {
                      print('Error updating appointment: $error');
                    });

                    

                    } catch (e) {

                    }

                    // Update the 'isAccepted' field in Firestore
                    
                  },
                );
            }).toList(),
          );
        },
      ),
    );
  }
}
