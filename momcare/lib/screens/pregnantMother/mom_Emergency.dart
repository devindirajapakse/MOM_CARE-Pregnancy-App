import 'package:flutter/material.dart';
import 'package:momcare/screens/pregnantMother/mom_Home.dart';
import 'package:momcare/widgets/appBar.dart';

class momEmergency extends StatefulWidget {
  const momEmergency({super.key});

  @override
  State<momEmergency> createState() => _momEmergencyState();
}

class _momEmergencyState extends State<momEmergency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
  onPressed: () {
    Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MomHome()));
  },
  leadingIcon: Icons.arrow_back,
),
    );
  }
}