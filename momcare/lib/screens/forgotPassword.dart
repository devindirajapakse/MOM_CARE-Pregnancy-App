import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momcare/colors.dart';
import 'package:momcare/screens/send_OTP.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Forgotpassword extends StatefulWidget {
  const Forgotpassword({Key? key}) : super(key: key);

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late String email;

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Forgot Password',
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
                  'Please enter your phone number to receive a verification code',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: kDarkcolor,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              //mobile testfield
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      email = value.trim();
                    });
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: kMainColor),
                        borderRadius: BorderRadius.circular(12)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: kLightColor),
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Email',
                    fillColor: kLightColor,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(height: 70),
              MaterialButton(
                onPressed: ()async {
                  //sendResetPasswordEmail(context, email);
                  try {
    // Set the Firebase language code to "en" if it's not already set
    if (FirebaseAuth.instance.languageCode == null) {
      await FirebaseAuth.instance.setLanguageCode("en");
    }
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    Get.snackbar("Success",
        "Password reset email sent to $email. Please check your inbox.",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green.withOpacity(0.1),
        colorText: Colors.green);
  } catch (e) {
    Get.snackbar("Error", "$e.message",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.redAccent.withOpacity(0.1),
        colorText: Colors.red);
  }
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
                        'Send',
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
          const SizedBox(height: 50,),
        ],
      ),
    );
  }


void onClickNextOne() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => sendOTP()));
  }
  Future<void> sendResetPasswordEmail(BuildContext context, String email) async {
  try {
    // Set the Firebase language code to "en" if it's not already set
    if (FirebaseAuth.instance.languageCode == null) {
      await FirebaseAuth.instance.setLanguageCode("en");
    }
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    Get.snackbar("Success",
        "Password reset email sent to $email. Please check your inbox.",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green.withOpacity(0.1),
        colorText: Colors.green);
  } catch (e) {
    Get.snackbar("Error", "$e.message",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.redAccent.withOpacity(0.1),
        colorText: Colors.red);
  }
}

}