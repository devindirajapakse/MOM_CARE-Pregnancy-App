import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momcare/colors.dart';
import 'package:momcare/screens/welcomeScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MOM CARE',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: kButtonColor,
        secondary: kButtonColor,
      )),
      home: welcomeScreen(),
    );
  }
}
