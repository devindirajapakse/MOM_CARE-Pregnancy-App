import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:momcare/colors.dart';
import 'package:momcare/screens/midwife/midHome2.dart';
import 'package:momcare/screens/midwife/mid_Navbar.dart';
import 'package:momcare/widgets/appBar.dart';
import 'package:momcare/widgets/datePicker.dart';

class makeAppointments extends StatefulWidget {
  String userID;
  String name;
  makeAppointments({Key? key, required this.userID, required this.name});

  @override
  State<makeAppointments> createState() => _makeAppointmentsState();
}

class _makeAppointmentsState extends State<makeAppointments> {
  DateTime selectedDate = DateTime.now();
  final TextEditingController _placeController = TextEditingController();

  String? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffDECBEC),
        toolbarHeight: 60,
        centerTitle: true,
        title: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/logo.png'),
            ),
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            const SizedBox(
              height: 30.0,
            ),
            Center(
              child: SizedBox(
                width: 360,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffDECBEC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    widget.name,
                    style: const TextStyle(
                      fontSize: 18,
                      color: kDarkcolor,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Date'),
                CustomDateRow(
                  selectedDate: selectedDate,
                  onTap: () => _selectDate(context),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Time'),
                Text(
                  _selectedTime.toString(),
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                IconButton(
                  onPressed: _show,
                  icon: const Icon(Icons.punch_clock),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Place'),
                SizedBox(
                  width: 130,
                  height: 30,
                  child: TextField(
                    controller: _placeController,
                  ),
                ),
                const Icon(Icons.place),
              ],
            ),
            const SizedBox(height: 50),
            MaterialButton(
              onPressed: () {
                addData();
              },
              child: Container(
                width: 150,
                decoration: BoxDecoration(
                  color: kButtonColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: SizedBox(
                width: 100,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffDECBEC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'When coming for the appointments, make sure to bring the previously obtained Reports, X-Rays, and etc.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: kRedcolor,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2022, 1),
      lastDate: DateTime(2200),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _show() async {
    final TimeOfDay? result = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (result != null) {
      setState(() {
        _selectedTime = result.format(context);
      });
    }
  }

  void addData() async {
    final appointmentData = {
      'userID': widget.userID,
      'name': widget.name,
      'selectedDate': selectedDate,
      'selectedTime': _selectedTime,
      'place': _placeController.text,
    };

    try {
      await FirebaseFirestore.instance
          .collection('midwife').doc(FirebaseAuth.instance.currentUser!.uid).collection('appointments')
          .add(appointmentData);
        FirebaseFirestore.instance.collection('appointments').add(appointmentData);
      // Success
      print('Appointment data added successfully');
    } catch (error) {
      // Failure
      print('Error adding appointment data: $error');
    }
  }
}
