import 'package:flutter/material.dart';
import 'package:momcare/colors.dart';
import 'package:momcare/screens/midwife/midProfile.dart';
import 'package:momcare/screens/midwife/mid_ContactUS.dart';

import 'package:momcare/screens/signInScreen.dart';

class midNavbar extends StatefulWidget {
  const midNavbar({super.key});

  @override
  State<midNavbar> createState() => _midNavbarState();
}

class _midNavbarState extends State<midNavbar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(height: 50),
          Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/logo.png'),
              ),
            ),
          ),
          customDivider(),
          CustomListTileButton(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const midProfile()));
            },
            title: 'Profile',
          ),
          customDivider(),
          CustomListTileButton(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignInScreen()));
            },
            title: 'Logout',
          ),
          customDivider(),
        ],
      ),
    );
  }

  Widget customDivider() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Divider(
        color: kDarkcolor,
        thickness: 3,
      ),
    );
  }
}

class CustomListTileButton extends StatelessWidget {
  Function onTap;
  String title;
  CustomListTileButton({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => onTap(),
      child: Center(
        child: Text(title),
      ),
    );
  }
}
