import 'package:flutter/material.dart';

class momContactUs extends StatefulWidget {
  const momContactUs({super.key});

  @override
  State<momContactUs> createState() => _momContactUsState();
}

class _momContactUsState extends State<momContactUs> {
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