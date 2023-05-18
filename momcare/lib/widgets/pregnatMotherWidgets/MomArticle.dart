import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:momcare/colors.dart';

class MomArticle extends StatefulWidget {
  const MomArticle({super.key});

  @override
  State<MomArticle> createState() => _MomArticleState();
}

class _MomArticleState extends State<MomArticle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: kMainColor,
              ),
              child: const Center(
                child: Icon(
                  Icons.person_outlined,
                  color: kTopicColor,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              width: 16.0,
            ),
            Text(
              'Thanushi',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: kMainColor,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const SizedBox(height: 8.0),
        const SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Download the world’s leading pregnancy tracker app today, for free week-by-week pregnancy information and articles! The Pregnancy+ app features expert advice.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        )
      ],
    );
  }
}
