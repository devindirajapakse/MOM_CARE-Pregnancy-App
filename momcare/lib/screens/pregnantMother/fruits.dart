import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:momcare/screens/pregnantMother/mom_MainFoods.dart';
import 'package:momcare/widgets/appBar.dart';

class Fruits extends StatefulWidget {
  const Fruits({Key? key}) : super(key: key);

  @override
  State<Fruits> createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const mom_MainFoods()),
          );
        },
        leadingIcon: Icons.arrow_back,
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
                  "Fruits",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  showFullDescription
                      ? "Eating a variety of fruits during pregnancy is an essential part of a healthy diet. Fruits are a rich source of essential vitamins, minerals, and fiber, which are crucial for the growth and development of the fetus. The following are some of the types of fruits that can be consumed during pregnancy:\n\nBerries: Berries are a great source of vitamin C, fiber, and antioxidants. Eating strawberries, blueberries, raspberries, and blackberries can help boost immunity, reduce inflammation, and aid in digestion.\n\nApples: Apples are a rich source of fiber and vitamin C, and they can help reduce the risk of gestational diabetes. Apples also contain quercetin, an antioxidant that can reduce inflammation.\n\nOranges: Oranges are rich in vitamin C and folic acid, which are crucial for fetal growth and development. Eating oranges can also help boost immunity and prevent infections.\n\nBananas: Bananas are a good source of potassium, vitamin C, and vitamin B6. Eating bananas can help regulate blood pressure, aid digestion, and reduce the risk of gestational diabetes.\n\nMangoes: Mangoes are a rich source of vitamin A, vitamin C, and fiber. Eating mangoes can help improve vision, boost immunity, and aid digestion.\n\nKiwi: Kiwis are a rich source of vitamin C, folate, and potassium. Eating kiwis can help reduce the risk of preterm labor and improve fetal growth.\n\nAvocado: Avocados are rich in healthy fats, fiber, and folate. Eating avocados can help regulate blood sugar levels, reduce inflammation, and aid in fetal brain development.\n\nIt is important to wash all fruits thoroughly before consuming them, and to avoid consuming any fruits that may be contaminated or have pesticides. It is also recommended to consume fruits in moderation, as too much sugar intake can lead to gestational diabetes. It is always best to consult with a healthcare provider or a registered dietitian for personalized dietary recommendations during pregnancy.\n"
                      : "Eating a variety of fruits during pregnancy is an essential part of a healthy diet. Fruits are a rich source of essential vitamins, minerals, and fiber, which are crucial for the growth and development of the fetus. \n\n [Continue]",
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
