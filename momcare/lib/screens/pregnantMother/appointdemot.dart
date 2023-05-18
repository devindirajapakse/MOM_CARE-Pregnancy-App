// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class AppointmentsScreen extends StatelessWidget {
//   final String userID;

//   const AppointmentsScreen({Key? key, required this.userID}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Appointments'),
//       ),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: FirebaseFirestore.instance
//             .collection('appointments')
//             .where('userID', isEqualTo: userID)
//             .snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.hasError) {
//             return Text('Error: ${snapshot.error}');
//           }

//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return CircularProgressIndicator();
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Text('No appointments found for this user.');
//           }

//           return ListView(
//             children: snapshot.data!.docs.map((DocumentSnapshot document) {
//               final data = document.data() as Map<String, dynamic>;

//               final String appointmentID = document.id;
//               final String name = data['name'];
//               final DateTime selectedDate = data['selectedDate'].toDate();
//               final String? selectedTime = data['selectedTime'];
//               final String place = data['place'];

//               return ListTile(
//                 title: Text(name),
//                 subtitle: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('Date: ${selectedDate.toString()}'),
//                     Text('Time: ${selectedTime ?? 'Not specified'}'),
//                     Text('Place: $place'),
//                   ],
//                 ),
//                 trailing: IconButton(
//                   icon: Icon(Icons.delete),
//                   onPressed: () {
//                     // Delete the appointment
//                     FirebaseFirestore.instance
//                         .collection('appointments')
//                         .doc(appointmentID)
//                         .delete()
//                         .then((value) {
//                       print('Appointment deleted successfully');
//                     }).catchError((error) {
//                       print('Error deleting appointment: $error');
//                     });
//                   },
//                 ),
//               );
//             }).toList(),
//           );
//         },
//       ),
//     );
//   }
// }
