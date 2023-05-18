import 'package:flutter/material.dart';
import 'package:momcare/screens/midwife/midHome1.dart';
import 'package:momcare/screens/midwife/signUpScreen.dart';
import 'package:momcare/screens/pregnantMother/mom_Home.dart';
import 'package:momcare/screens/pregnantMother/mom_Signup.dart';
import 'package:momcare/screens/signInScreen.dart';
import 'package:momcare/screens/test.dart';

class landingScreen extends StatefulWidget {
  const landingScreen({super.key});

  @override
  State<landingScreen> createState() => _landingScreenState();
}

class _landingScreenState extends State<landingScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xffDECBEC),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Container(
                child: const Image(
                  image: AssetImage("images/logo.png"),
                  height: 230,
                ),
              ),
              
              const Center(
                child: Text(
                  "I'm a",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 50,),
              const SizedBox(height: 20.0),
              Center(
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupScreen()));
                    },
                    child:  Text(
                      'Midwife',
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
              const SizedBox(height: 20.0),
              Center(
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Momsignup()));
                    },
                    child: const Text(
                      'Pregnant Mother',
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
      ),
    );
  }
}
