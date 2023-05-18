import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:momcare/colors.dart';

class midProfile extends StatefulWidget {
  const midProfile({super.key});

  @override
  State<midProfile> createState() => _midProfileState();
}

class _midProfileState extends State<midProfile> {
  String image =
      'https://static.vecteezy.com/system/resources/previews/005/544/718/original/profile-icon-design-free-vector.jpg';
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    FirebaseFirestore.instance
        .collection('midwife')
        //.doc(FirebaseAuth.instance.currentUser!.uid)
        .doc('hPm2zNvTwacIN3VTHTNyD2C8Zsx1')
        .get()
        .then((value) {
      setState(() {
        image = value['image'];
        name.text = value['name'];
      });
    });
  }

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

        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  const SizedBox(height: 20.0),
                  Center(
                    child: Stack(
                      children: [
                        CircleAvatar(
                          foregroundImage: NetworkImage(image),
                          radius: 60.0,
                          backgroundImage: const AssetImage('images/profile.png'),
                          backgroundColor: const Color(0xffDECBEC),
                        ),
                        Positioned(
                          bottom: 0,
                          right: -6,
                          child: Transform.scale(
                            scale: 1.5,
                            child: IconButton(
                              icon: const Icon(
                                Icons.camera_alt,
                                size: 25,
                              ),
                              onPressed: () {
                                // have to implement camera functionality
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  const Text('Name'),
                  TextField(
                      controller: name,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text('Edit Name'),
                                        content: TextField(
                                          controller: name,
                                        ),
                                        actions: [
                                          TextButton(
                                            child: const Text('CANCEL'),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                          TextButton(
                                            child: const Text('SAVE'),
                                            onPressed: () {
                                              FirebaseFirestore.instance
                                                  .collection('midwife')
                                                  //.doc(FirebaseAuth.instance.currentUser!.uid)
                                                  .doc(
                                                      'hPm2zNvTwacIN3VTHTNyD2C8Zsx1')
                                                  .update({
                                                'name': name.text
                                              }).then((value) {
                                                Navigator.pop(context);
                                              });
                                            },
                                          )
                                        ],
                                      );
                                    });
                              }))),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Email'),
                  TextField(
                      controller: email,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text('Edit Email'),
                                        content: TextField(
                                          controller: email,
                                        ),
                                        actions: [
                                          TextButton(
                                            child: const Text('CANCEL'),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                          TextButton(
                                            child: const Text('SAVE'),
                                            onPressed: () {
                                              FirebaseFirestore.instance
                                                  .collection('midwife')
                                                  //.doc(FirebaseAuth.instance.currentUser!.uid)
                                                  .doc(
                                                      'hPm2zNvTwacIN3VTHTNyD2C8Zsx1')
                                                  .update({
                                                'name': email.text
                                              }).then((value) {
                                                Navigator.pop(context);
                                              });
                                            },
                                          )
                                        ],
                                      );
                                    });
                              }))),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Password'),
                  TextField(
                      controller: password,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text('Edit Password'),
                                        content: TextField(
                                          controller: password,
                                        ),
                                        actions: [
                                          TextButton(
                                            child: const Text('CANCEL'),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                          TextButton(
                                            child: const Text('SAVE'),
                                            onPressed: () {
                                              FirebaseFirestore.instance
                                                  .collection('midwife')
                                                  //.doc(FirebaseAuth.instance.currentUser!.uid)
                                                  .doc(
                                                      'hPm2zNvTwacIN3VTHTNyD2C8Zsx1')
                                                  .update({
                                                'name': password.text
                                              }).then((value) {
                                                Navigator.pop(context);
                                              });
                                            },
                                          )
                                        ],
                                      );
                                    });
                              }))),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Phone Number'),
                  TextField(
                      controller: mobile,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text('Edit Phone Number'),
                                        content: TextField(
                                          controller: mobile,
                                        ),
                                        actions: [
                                          TextButton(
                                            child: const Text('CANCEL'),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                          TextButton(
                                            child: const Text('SAVE'),
                                            onPressed: () {
                                              FirebaseFirestore.instance
                                                  .collection('midwife')
                                                  //.doc(FirebaseAuth.instance.currentUser!.uid)
                                                  .doc(
                                                      'hPm2zNvTwacIN3VTHTNyD2C8Zsx1')
                                                  .update({
                                                'name': mobile.text
                                              }).then((value) {
                                                Navigator.pop(context);
                                              });
                                            },
                                          )
                                          
                                        ],
                                      );
                                    });
                              })
                              )
                              ),
                              const SizedBox(
                    height: 20,
                  ),
                ]),
              )),
        ));
  }
}
