import 'package:flutter/material.dart';
import 'package:momcare/screens/pregnantMother/mom_navbar.dart';

class MomHome extends StatefulWidget {
  const MomHome({super.key});

  @override
  State<MomHome> createState() => _MomHomeState();
}

class _MomHomeState extends State<MomHome> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xffDECBEC),
        toolbarHeight: 60,
        centerTitle: true,
        title: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/logo.png'),),
          ),
        ),
      ),
      body: Container(
        color: Color.fromARGB(0, 255, 255, 255),
          child: ListView(
          children: [
            Container(
               child: const Image(
                        image: AssetImage("images/logo.png"),
                        height: 95,
                      ),
            ),

          ],
          ),
      ),
       
        
      


    );
           
            

          
  }
}