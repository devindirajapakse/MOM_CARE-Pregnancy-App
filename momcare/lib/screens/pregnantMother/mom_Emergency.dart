import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:momcare/screens/pregnantMother/mom_Home.dart';
import 'package:momcare/widgets/appBar.dart';

class MomEmergency extends StatefulWidget {
  const MomEmergency({Key? key});

  @override
  State<MomEmergency> createState() => _MomEmergencyState();
}

class _MomEmergencyState extends State<MomEmergency> {
  void _callNumber(String phoneNumber) async {
    if (await canLaunch('tel:$phoneNumber')) {
      await launch('tel:$phoneNumber');
    } else {
      throw 'Could not launch $phoneNumber';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const MomHome()));
        },
        leadingIcon: Icons.arrow_back,
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 15, // Adjust the aspect ratio as needed
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('./images/emergency.jpg'),
                  fit: BoxFit.contain, // Adjust the fit property
                ),
              ),
            ),
          ),
          const EmergencyContactButton(
            title: 'Suwasariya Emergency Ambulance Service',
            phoneNumber: '1990',
          ),
          const SizedBox(height: 16),
          const EmergencyContactButton(
            title: 'Ambulance / Fire & Rescue',
            phoneNumber: '110',
          ),
        ],
      ),
    );
  }
}

class EmergencyContactButton extends StatelessWidget {
  final String title;
  final String phoneNumber;

  const EmergencyContactButton({
    required this.title,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton.icon(
        onPressed: () => _callNumber(phoneNumber),
        icon: const Icon(Icons.phone),
        label: Text(title),
      ),
    );
  }
}

_callNumber(String phoneNumber) {}
