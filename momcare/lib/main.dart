import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momcare/colors.dart';
import 'package:momcare/screens/midwife/makeAppointments.dart';
import 'package:momcare/screens/midwife/midHome1.dart';
import 'package:momcare/screens/pregnantMother/mom_AppointHistory1.dart';
import 'package:momcare/screens/pregnantMother/mom_AppointHistory2.dart';
import 'package:momcare/screens/pregnantMother/mom_Calender.dart';
import 'package:momcare/screens/pregnantMother/mom_Communication.dart';
import 'package:momcare/screens/pregnantMother/mom_MainFoods.dart';
import 'package:momcare/screens/pregnantMother/mom_Profile.dart';
import 'package:momcare/screens/pregnantMother/mom_Signup.dart';
import 'package:momcare/screens/signInScreen.dart';

import 'package:momcare/screens/test.dart';
import 'package:momcare/screens/welcomeScreen.dart';
import 'package:momcare/screens/landingScreen.dart';
import 'package:momcare/screens/pregnantMother/mom_Home.dart';

import 'screens/pregnantMother/mom_Articles.dart';

 

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
      home:  welcomeScreen(),
      
      
    );
  }
}
