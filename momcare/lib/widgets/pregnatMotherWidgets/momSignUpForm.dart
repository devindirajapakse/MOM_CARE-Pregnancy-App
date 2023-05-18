import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:momcare/screens/pregnantMother/mom_Home.dart';

import '../../colors.dart';

class MomSignUpForm extends StatefulWidget {
  const MomSignUpForm({super.key});

  @override
  State<MomSignUpForm> createState() => _MomSignUpFormState();
}

class _MomSignUpFormState extends State<MomSignUpForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _nicController = TextEditingController();

  onClickSignup() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MomHome()));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
          key: _formKey,
          child: Column(children: <Widget>[
            const Text(
              'Sign Up',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(hintText: 'Name'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(hintText: 'Password'),
            ),
            const SizedBox(height: 16),
            // TextField(
            //   controller: confirmpass,
            //   decoration: const InputDecoration(hintText: 'Confirm Password'),
            // ),
            // const SizedBox(height: 16),
            TextField(
              controller: _addressController,
              decoration: const InputDecoration(hintText: 'Address'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _mobileController,
              decoration: const InputDecoration(hintText: 'Phone Number'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _nicController,
              decoration: const InputDecoration(hintText: 'NIC'),
            ),
            const SizedBox(height: 16),
            MaterialButton(
              // onPressed: () => onClickSignup(),
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  try {
                    UserCredential userCredential = await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                      email: _emailController.text,
                      password: _passwordController.text,
                    );
                    Get.offAll(() => const MomHome());
                    // Storing additional user info in Cloud Firestore
                    FirebaseFirestore.instance
                        .collection('mother')
                        .doc(userCredential.user!.uid)
                        .set({
                      'email': _emailController.text,
                      'name': _nameController.text,
                      'mobile': _mobileController.text,
                      'address': _addressController.text,
                      'nic': _nicController.text,
                      'password': _passwordController.text,

                      // Add any other user info here that you want to store in the Firestore.
                    });
                    // Registration successful, navigate to home screen or login page
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {
                      print('The password provided is too weak.');
                    } else if (e.code == 'email-already-in-use') {
                      print('The account already exists for that email.');
                    }
                  } catch (e) {
                    print(e);
                  }
                }
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
                      'Signup',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ])),
    );
  }
}
