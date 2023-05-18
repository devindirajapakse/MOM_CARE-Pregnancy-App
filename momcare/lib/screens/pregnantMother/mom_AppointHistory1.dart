import 'package:flutter/material.dart';
import 'package:momcare/colors.dart';
import 'package:momcare/widgets/appBar.dart';
import 'package:momcare/widgets/pregnatMotherWidgets/momAppointmentCard.dart';

class mom_appointHistory1 extends StatefulWidget {
  const mom_appointHistory1({super.key});

  @override
  State<mom_appointHistory1> createState() => _mom_appointHistory1State();
}

List<Widget> _momAppoinmentCard = [
  const MomAppoinmentCard(),
  const MomAppoinmentCard(),
  const MomAppoinmentCard()
];

class _mom_appointHistory1State extends State<mom_appointHistory1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onPressed: () {
          Navigator.pop(context);
        },
        leadingIcon: Icons.arrow_back,
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: ListView.builder(
          itemCount: _momAppoinmentCard.length,
          itemBuilder: (BuildContext context, int index) {
            return _momAppoinmentCard[index];
          },
        ),
      ),
    );
  }
}
