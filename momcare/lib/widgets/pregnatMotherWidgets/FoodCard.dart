import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:momcare/colors.dart';

class FoodCardMom extends StatefulWidget {
  final String title;
  final AssetImage bgImage;
  final VoidCallback onPressed;
  const FoodCardMom({super.key, required this.title, required this.bgImage, required this.onPressed});

  @override
  State<FoodCardMom> createState() => _FoodCardMomState();
}

class _FoodCardMomState extends State<FoodCardMom> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          elevation: 3,
          child: Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: widget.bgImage,
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                widget.title,
                style: const TextStyle(color: kTopicColor, fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.end,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
