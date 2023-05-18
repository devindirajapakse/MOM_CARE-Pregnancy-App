import 'package:flutter/material.dart';
import 'package:momcare/colors.dart';
import 'package:momcare/screens/reset_password.dart';

import 'OTP_edittext.dart';

class sendOTP extends StatefulWidget {
  sendOTP({super.key});
  final textOneCtrl = TextEditingController();
  @override
  State<sendOTP> createState() => _sendOTPState();
}

class _sendOTPState extends State<sendOTP> {
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
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 220,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/forgot_password.png'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Enter OTP',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: kTopicColor,
                ),
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Enter the verification code',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: kDarkcolor,
                  ),
                ),
              ),

              

              const SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OTPEdittext(
                    controller: TextEditingController(),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  OTPEdittext(
                    controller: TextEditingController(),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  OTPEdittext(
                    controller: TextEditingController(),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  OTPEdittext(
                    controller: TextEditingController(),
                  ),
                ],
              )
            ],
          ),

          
          const SizedBox(height: 80),

          MaterialButton(
            onPressed: () {
              onClickNextOne();
            },
            child: Container(
              width: 340,
              decoration: BoxDecoration(
                color: kButtonColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onClickNextOne() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const resetPassword()));
  }
}
