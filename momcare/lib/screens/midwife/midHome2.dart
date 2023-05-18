import 'package:flutter/material.dart';
import 'package:momcare/screens/midwife/makeAppointments.dart';
import 'package:momcare/screens/midwife/recordHealth.dart';
import 'package:momcare/screens/midwife/vaccinationDetails.dart';

class midHome2 extends StatefulWidget {
  String userID;
  String name;
  midHome2({super.key, required this.userID, required this. name});

  @override
  State<midHome2> createState() => _midHome2State();
}

class _midHome2State extends State<midHome2> {
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
            image: DecorationImage(image: AssetImage('images/logo.png'),),
          ),
        ),
      ),

      body: Center(
        child: ListView(
          children: [
            const SizedBox(height: 170.0),
              Center(
                child: SizedBox(
                  width: 240,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => makeAppointments(userID: widget.userID, name: widget.name)));
                    },
                    child: const Text(
                      'Make Appointments',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff835BA0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      elevation: 0,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30.0),
              Center(
                child: SizedBox(
                  width: 240,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => RecordHealth(userID: widget.userID,name :widget.name)));
                    },
                    child: const Text(
                      'Record Health & Wellness',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff835BA0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      elevation: 0,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30.0),
              Center(
                child: SizedBox(
                  width: 240,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => vaccination(userID: widget.userID,name :widget.name)));
                    },
                    child: const Text(
                      'Vaccination Details',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff835BA0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      elevation: 0,
                    ),
                  ),
                ),
              ),

              
          ],
        ),
      ),
    );
  }
}