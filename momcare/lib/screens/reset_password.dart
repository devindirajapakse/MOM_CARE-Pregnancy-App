import 'package:flutter/material.dart';
import 'package:momcare/colors.dart';

class resetPassword extends StatefulWidget {
  const resetPassword({super.key});

  @override
  State<resetPassword> createState() => _resetPasswordState();
}

class _resetPasswordState extends State<resetPassword> {
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
              height: 180,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/forgot_password.png'),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Reset Password',
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
                  'Set the new password for your account so you can login and access all the features',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: kDarkcolor,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              //new password testfield
              

              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: kMainColor),
                        borderRadius: BorderRadius.circular(12)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: kLightColor),
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Enter new password',
                    fillColor: kLightColor,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              //Confirm new password textfield

              

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: kMainColor),
                        borderRadius: BorderRadius.circular(12)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: kLightColor),
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Re-Enter New password',
                    fillColor: kLightColor,
                    filled: true,
                  ),
                ),
              ),

              const SizedBox(height: 40),

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
              const SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }

  void onClickNextOne() {}
}
