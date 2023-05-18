import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:momcare/screens/pregnantMother/appointdemot.dart';
import 'package:momcare/screens/pregnantMother/mom_Articles.dart';
import 'package:momcare/screens/pregnantMother/mom_Booking.dart';
import 'package:momcare/screens/pregnantMother/mom_MainFoods.dart';
import 'package:momcare/screens/pregnantMother/mom_music.dart';
import 'package:momcare/screens/pregnantMother/mom_navbar.dart';
import 'package:momcare/screens/pregnantMother/mom_workouts.dart';
import 'package:momcare/widgets/appBar.dart';

class MomHome extends StatefulWidget {

  const MomHome({super.key});

  @override
  State<MomHome> createState() => _MomHomeState();
}

class _MomHomeState extends State<MomHome> {
 
  @override
  Widget build(BuildContext context) {
    final UserID = FirebaseAuth.instance.currentUser!.uid;
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const NavBar(),
      appBar: CustomAppBar(
        leadingIcon: null,
        onPressed: () {},
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AppointmentsScreen(userID: UserID,)));
            },
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Appointments",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage('images/appoinments.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => mom_workouts()));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Workouts",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage('images/workouts.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => momMusic()));
              },
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Listen to Music",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage('images/music.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ])),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const mom_MainFoods()));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Nutritional Needs",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage('images/nuritional_needs.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const momArticles()));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Articles",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage('images/articles.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              )),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
