import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:momcare/colors.dart';

class vaccination extends StatefulWidget {
  String userID;
  String name;
  vaccination({super.key, required this.userID, required this.name});

  @override
  State<vaccination> createState() => _vaccinationState();
}

class _vaccinationState extends State<vaccination> {
  bool covid = false;
  bool firstTrim = false;
  bool secondTrim = false;
  bool thirdTrim = false;

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
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
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
            ],
          ),
          Column(
            children: [
              CheckboxListTile(
                title: const Text(
                  'Covid 19 :',
                  style: TextStyle(color: kDarkcolor),
                ),
                value: covid,
                onChanged: (value) {
                  setState(() {
                    covid = value!;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CheckboxListTile(
                title: const Text(
                  'First Trimester Vaccine :',
                  style: TextStyle(color: kDarkcolor),
                ),
                value: firstTrim,
                onChanged: (value) {
                  setState(() {
                    firstTrim = value!;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CheckboxListTile(
                title: const Text(
                  'Second Trimester Vaccine :',
                  style: TextStyle(color: kDarkcolor),
                ),
                value: secondTrim,
                onChanged: (value) {
                  setState(() {
                    secondTrim = value!;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CheckboxListTile(
                title: const Text(
                  'Third Trimester Vaccine :',
                  style: TextStyle(color: kDarkcolor),
                ),
                value: thirdTrim,
                onChanged: (value) {
                  setState(() {
                    thirdTrim = value!;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
                    width: 360,
                    height: 48,
                    child: ElevatedButton(
                      
                      onPressed: () {
                        // Save health record to Firestore
                        FirebaseFirestore.instance
                            .collection('mother')
                            .doc(widget.userID)
                            .collection('health_records')
                            .add({
                              'covid19': covid,
                              'first trimester': firstTrim,
                              'second trimester': secondTrim,
                              'third trimester': thirdTrim,
                        }).then((value) {
                          // Show success message and navigate back
                          Get.snackbar(
                            'Success',
                            'Health record saved successfully',
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor: Colors.green,
                            colorText: Colors.white,
                          );
                          Navigator.pop(context);
                        }).catchError((error) {
                          // Show error message
                          Get.snackbar(
                            'Error',
                            'Failed to save health record',
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor: Colors.red,
                            colorText: Colors.white,
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: const Text(
                        'Save',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
