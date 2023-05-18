import 'package:flutter/material.dart';

class momMusic extends StatefulWidget {
  const momMusic({super.key});

  @override
  State<momMusic> createState() => _momMusicState();
}

class _momMusicState extends State<momMusic> {
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