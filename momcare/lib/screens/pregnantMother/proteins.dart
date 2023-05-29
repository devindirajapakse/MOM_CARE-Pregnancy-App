import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:momcare/screens/pregnantMother/mom_MainFoods.dart';
import 'package:momcare/widgets/appBar.dart';

class Proteins extends StatefulWidget {
  const Proteins({Key? key}) : super(key: key);

  @override
  State<Proteins> createState() => _ProteinsState();
}

class _ProteinsState extends State<Proteins> {
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

class Body extends StatefulWidget {
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

  bool showFullDescription = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 20,
        ),
        CarouselSlider(
          items: imageList
              .map(
                (e) => ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        e,
                        height: 300,
                        width: 100,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                ),
              )
              .toList(),
          options: CarouselOptions(
            autoPlay: true,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
            height: 200,
          ),
        ),
        const SizedBox(height: 20),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Proteins",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  showFullDescription
                      ? "Proteins are essential nutrients for pregnant women as they provide the building blocks for the growth and development of the fetus. There are various types of proteins that can be included in a healthy pregnancy diet:\n\nLean Meat: Lean meats such as chicken, turkey, beef, and pork are excellent sources of protein. They are also rich in iron, zinc, and vitamin B12, which are important for the healthy development of the baby. However, it is important to choose lean cuts of meat to avoid excess saturated fats.\n\nFish: Fish is another excellent source of protein and is also rich in omega-3 fatty acids, which are essential for the development of the baby's brain and eyes. However, pregnant women should be careful about the type of fish they eat and avoid high-mercury fish such as shark, swordfish, king mackerel, and tilefish.\n\nBeans and Lentils: Beans and lentils are a great source of plant-based protein and are also high in fiber, which can help prevent constipation during pregnancy. They are also rich in iron, folate, and other essential nutrients.\n\nEggs: Eggs are an excellent source of high-quality protein and are also rich in choline, which is important for the development of the baby's brain. Pregnant women can safely eat eggs as long as they are cooked thoroughly.\n\nDairy: Dairy products such as milk, cheese, and yogurt are rich in calcium, which is important for the development of the baby's bones and teeth. They are also a good source of protein. However, some pregnant women may be lactose intolerant or have allergies to dairy products.\n\nIt is important to follow medical advice regarding protein intake during pregnancy, as excess protein intake can lead to complications such as kidney problems. Pregnant women should aim to consume a balanced and varied diet, including a variety of protein sources, to ensure that they and their baby get all the necessary nutrients for a healthy pregnancy.\n"
                      : "Proteins are essential nutrients for pregnant women as they provide the building blocks for the growth and development of the fetus.There are various types of proteins that can be included in a healthy pregnancy diet:\n\n [Continue]",
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
                if (!showFullDescription)
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          showFullDescription = true;
                        });
                      },
                      child: const Text("Read More"),
                    ),
                  ),
                if (showFullDescription)
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          showFullDescription = false;
                        });
                      },
                      child: const Text("Read Less"),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
