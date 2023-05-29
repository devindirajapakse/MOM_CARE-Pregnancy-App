import 'package:flutter/material.dart';
import 'package:momcare/colors.dart';
import 'package:momcare/screens/pregnantMother/mom_AppointHistory1.dart';
import 'package:momcare/screens/pregnantMother/mom_Calender.dart';
import 'package:momcare/screens/pregnantMother/mom_Emergency.dart';
import 'package:momcare/screens/pregnantMother/mom_Notification.dart';
import 'package:momcare/screens/pregnantMother/mom_Profile.dart';
import 'package:momcare/screens/pregnantMother/mom_Signup.dart';
import 'package:momcare/screens/signInScreen.dart';


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
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>momProfile()));},
            title: 'Profile',
          ),
          customDivider(),
          CustomListTileButton(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>momCalender()));},
            title: 'Calender',
          ),customDivider(),
          CustomListTileButton(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>mom_appointHistory1()));},
            title: 'Appoinment History',
          ),
          customDivider(),
          CustomListTileButton(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MomEmergency()));},
            title: 'Emergency Call',
          ),
          customDivider(),
          CustomListTileButton(
            onTap: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>momNotification()));//
            },
            title: 'Notification',
          ),
          customDivider(),
          
          CustomListTileButton(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));},
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
