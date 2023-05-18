import 'package:flutter/material.dart';

class OTPEdittext extends StatefulWidget {
  OTPEdittext({super.key,required this.controller});

  TextEditingController controller;

  @override
  State<OTPEdittext> createState() => _OTPEdittextState();
}

class _OTPEdittextState extends State<OTPEdittext> {
  get controller => null;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                    width: 50,
                    height: 50,
      child: TextFormField(
                        controller: controller,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        decoration:  InputDecoration(
                          counterText: '',
                          
                          border: OutlineInputBorder(borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                          ),
                          
                          hintText: '_',
                          filled: true,
                          fillColor: const Color(0xffF2EAF8),
                        ),
                      ),
    );
  }
}