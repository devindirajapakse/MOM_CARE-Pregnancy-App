import 'package:flutter/material.dart';
import 'package:momcare/screens/pregnantMother/mom_Home.dart';
import 'package:momcare/widgets/appBar.dart';

class mom_workouts extends StatefulWidget {
  const mom_workouts({super.key});

  @override
  State<mom_workouts> createState() => _mom_workoutsState();
}

class _mom_workoutsState extends State<mom_workouts> {
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
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 15, // Adjust the aspect ratio as needed
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('./images/workoutPlan.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16.0,),
               AspectRatio(
                aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('./images/workout_chart.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
