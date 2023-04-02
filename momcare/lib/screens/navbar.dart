import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // child: ListView(
      //   children: [
          
      //   ],
      // ),
       child: ListView(
        padding: EdgeInsets.zero,
        children: [ 
          ListTile(
            title: Text('Profile'),
            onTap: () => null,
          ),
          Divider(), 
          ListTile(
            title: Text('Notification'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Terms & Conditions'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Contact Us'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Logout'),
            onTap: () => null,
          ),
        ],  
       ),
     );
    
  }
}