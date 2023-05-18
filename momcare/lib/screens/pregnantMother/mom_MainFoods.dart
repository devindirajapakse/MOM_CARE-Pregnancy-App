import 'package:flutter/material.dart';
import 'package:momcare/screens/pregnantMother/dairy.dart';
import 'package:momcare/screens/pregnantMother/fruits.dart';
import 'package:momcare/screens/pregnantMother/grains.dart';
import 'package:momcare/screens/pregnantMother/mom_Home.dart';
import 'package:momcare/screens/pregnantMother/proteins.dart';
import 'package:momcare/screens/pregnantMother/vegetables.dart';
import 'package:momcare/widgets/appBar.dart';
import 'package:momcare/widgets/pregnatMotherWidgets/FoodCard.dart';

class mom_MainFoods extends StatefulWidget {
  const mom_MainFoods({super.key});

  @override
  State<mom_MainFoods> createState() => _mom_MainFoodsState();
}

class _mom_MainFoodsState extends State<mom_MainFoods> {
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
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              FoodCardMom(
                onPressed: (){
                  Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Vegetables()));
                },
                title: 'Vegetables',
                bgImage: const AssetImage('./images/vegetables.jpg'),
              ),
              const SizedBox(
                height: 20,
              ),
              FoodCardMom(
                onPressed: (){
                  Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Fruits()));
                },
                title: 'Fruits',
                bgImage: const AssetImage('./images/fruits.jpg'),
              ),
              const SizedBox(
                height: 20,
              ),

              FoodCardMom(
                onPressed: (){
                  Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Dairy()));
                },
                title: 'Dairy',
                bgImage: const AssetImage('./images/dairy.jpg'),
              ),
              const SizedBox(
                height: 20,
              ),
              FoodCardMom(
                onPressed: (){
                  Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Grains()));
                },
                title: 'Grains',
                bgImage: const AssetImage('./images/grains.jpg'),
              ),
              const SizedBox(
                height: 20,
              ),
              FoodCardMom(
                onPressed: (){
                  Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Proteins()));
                },
                title: 'Proteins',
                bgImage: const AssetImage('./images/proteins.jpg'),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
