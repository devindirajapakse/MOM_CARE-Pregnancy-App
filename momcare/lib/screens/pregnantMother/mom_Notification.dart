import 'package:flutter/material.dart';

class momNotification extends StatefulWidget {
  const momNotification({super.key});

  @override
  State<momNotification> createState() => _momNotificationState();
}

class _momNotificationState extends State<momNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Color(0xffDECBEC),
        toolbarHeight: 60,
        centerTitle: true,
        title: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/logo.png'),),
          ),
        ),
      ),
    );
  }
}