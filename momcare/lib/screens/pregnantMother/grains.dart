import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:momcare/screens/pregnantMother/mom_MainFoods.dart';
import 'package:momcare/widgets/appBar.dart';

class Grains extends StatefulWidget {
  const Grains({super.key});

  @override
  State<Grains> createState() => _GrainsState();
}

class _GrainsState extends State<Grains> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => mom_MainFoods()));
        },
        leadingIcon: Icons.arrow_back,
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Body();
}

class _Body extends State<Body> {
List<String> imageList = [
    "https://images.pexels.com/photos/533236/pexels-photo-533236.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/6060223/pexels-photo-6060223.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/3872433/pexels-photo-3872433.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/7511800/pexels-photo-7511800.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.freeimages.com/images/large-previews/504/cucumber-1318160.jpg"


];

  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget> [
        SizedBox(height: 20,),
        CarouselSlider(items: imageList.map((e) => ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(e,
              height: 300,
              width: 100,
              fit: BoxFit.cover,
              )
            ],
          ),

        )).toList(), options: CarouselOptions(
          autoPlay: true,
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
          height: 200,
        )
        )


      ],

    );
  }
}