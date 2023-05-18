import 'package:flutter/material.dart';
import 'package:momcare/colors.dart';
import 'package:momcare/screens/signInScreen.dart';

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({super.key});

  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  @override
  void initState() {
    super.initState();
    // Redirect to the HomePage after 5 seconds
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SignInScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              
              child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: kDarkcolor,
                ),
              )),
          Positioned(
            child: Container(
              color: const Color(0xffDECBEC),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                    ),
                    Container(
                      child: const Image(
                        image: AssetImage("images/logo.png"),
                        height: 200,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'WELCOME!',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: kDarkcolor),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
