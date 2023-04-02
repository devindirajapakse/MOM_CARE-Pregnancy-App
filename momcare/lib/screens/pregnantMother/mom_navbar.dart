import 'package:flutter/material.dart';
import 'package:momcare/colors.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
     
       child: ListView(
        padding: EdgeInsets.zero,
        children: [ 
          const SizedBox(height: 50),
           Container(
            height: 150,
              width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/logo.png'),),
          ),
        ),
          
          customDivider(),
          CustomListTileButton(
            onTap: (){},
            title: 'Profile',
          ),
          customDivider(),
          CustomListTileButton(
            onTap: (){},
            title: 'Profile',
          ),customDivider(),
          CustomListTileButton(
            onTap: (){},
            title: 'Profile',
          ),
          customDivider(),
          CustomListTileButton(
            onTap: (){},
            title: 'Profile',
          ),
          customDivider(),
          CustomListTileButton(
            onTap: (){},
            title: 'Profile',
          ),
          customDivider(),
          CustomListTileButton(
            onTap: (){},
            title: 'Profile',
          ),customDivider(),
          CustomListTileButton(
            onTap: (){},
            title: 'Profile',
          ),
          customDivider(),
          CustomListTileButton(
            onTap: (){},
            title: 'Logout',
          ),
          customDivider(),
        ],  
       ),
     

    );
  }

  Widget customDivider(){
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 50),
      child: Divider(
        color: kButtonColor,
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
