import 'package:flutter/material.dart';

class midContactUS extends StatefulWidget {
  const midContactUS({super.key});

  @override
  State<midContactUS> createState() => _midContactUSState();
}

class _midContactUSState extends State<midContactUS> {
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