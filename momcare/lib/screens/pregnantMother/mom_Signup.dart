import 'package:flutter/material.dart';
import 'package:momcare/widgets/pregnatMotherWidgets/momSignUpForm.dart';

class Momsignup extends StatefulWidget {
  const Momsignup({super.key});

  @override
  State<Momsignup> createState() => _MomsignupState();
}

class _MomsignupState extends State<Momsignup> {
  @override
  Widget build(BuildContext context) {
    var orientation, size, height, width;

    orientation = MediaQuery.of(context).orientation;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Stack(
      children: [
        Container(
          height: height,
          width: width,
          color: const Color(0xffDECBEC),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 8),
              Container(
                height: 150,
                width: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/logo.png'),
                  ),
                ),
              ),
              const SizedBox(height: 26),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                    ),
                    child: const Padding(
                        padding: EdgeInsets.all(32.0), child: MomSignUpForm()),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
