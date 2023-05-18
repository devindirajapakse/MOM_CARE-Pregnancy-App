import 'package:flutter/material.dart';
import 'package:momcare/colors.dart';

class MomAppoinmentCard extends StatefulWidget {
  const MomAppoinmentCard({super.key});

  @override
  State<MomAppoinmentCard> createState() => _MomAppoinmentCardState();
}

class _MomAppoinmentCardState extends State<MomAppoinmentCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Card(
            color: kMainColor, // set card color to main color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0), // set border radius
            ), 
            child: Padding(
              padding: const EdgeInsets.all(26.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Date: 2022-01-01',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: kTopicColor,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Time: 14:30',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: kTopicColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 8.0,)
      ],
    );
  }
}
