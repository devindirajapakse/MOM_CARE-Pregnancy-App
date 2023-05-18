import 'package:flutter/material.dart';

class momEmergency extends StatefulWidget {
  const momEmergency({super.key});

  @override
  State<momEmergency> createState() => _momEmergencyState();
}

class _momEmergencyState extends State<momEmergency> {
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
            image: DecorationImage(image: AssetImage('images/logo.png'),),
          ),
        ),
      ),
    );
  }
}