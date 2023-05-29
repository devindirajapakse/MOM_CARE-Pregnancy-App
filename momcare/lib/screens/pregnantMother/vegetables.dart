import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:momcare/screens/pregnantMother/mom_MainFoods.dart';
import 'package:momcare/widgets/appBar.dart';

class Vegetables extends StatefulWidget {
  const Vegetables({super.key});

  @override
  State<Vegetables> createState() => _VegetablesState();
}

class _VegetablesState extends State<Vegetables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const mom_MainFoods()));
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
              .map((e) => ClipRRect(
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
                  ))
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
                  "Vegetables",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  showFullDescription
                      ? "Eating a variety of vegetables is essential during pregnancy as they provide important vitamins, minerals, and fiber needed for a healthy pregnancy. Here are some of the types of vegetables that are particularly beneficial for pregnant women:\n\nDark Leafy Greens: Vegetables such as spinach, kale, and collard greens are packed with nutrients like vitamin A, C, and K, iron, and calcium. They are also rich in antioxidants that can help reduce inflammation and lower the risk of chronic diseases.\n\nBroccoli and Cauliflower: These vegetables are rich in folate, which is important for the growth and development of the baby's neural tube. They are also a good source of vitamin C, fiber, and other essential nutrients.\n\nCarrots: Carrots are an excellent source of vitamin A, which is important for the development of the baby's eyes, skin, and immune system. They also contain fiber and other important nutrients like potassium and vitamin K.\n\nSweet Potatoes: Sweet potatoes are rich in vitamin A, C, and E, potassium, and fiber. They also contain antioxidants that can help reduce inflammation and lower the risk of chronic diseases.\n\nBell Peppers: Bell peppers are a good source of vitamin C, which can help boost the immune system and improve the absorption of iron from plant-based foods. They also contain fiber and other important nutrients like vitamin B6 and potassium.\n\nTomatoes: Tomatoes are an excellent source of vitamin C, potassium, and lycopene, an antioxidant that can help protect against certain types of cancer. They are also a good source of vitamin A and fiber.\n\nGreen Beans: Green beans are a good source of folate, vitamin C, and fiber. They are also low in calories, making them a great addition to a healthy pregnancy diet.\n\nIt is important to note that pregnant women should avoid raw or undercooked vegetables, as well as unwashed or contaminated produce, to reduce the risk of foodborne illness. It is also recommended to consult with a healthcare provider or registered dietitian for personalized nutrition recommendations during pregnancy."
                      : "Eating a variety of vegetables is essential during pregnancy as they provide important vitamins, minerals, and fiber needed for a healthy pregnancy. Here are some of the types of vegetables that are particularly beneficial for pregnant women:\n\nDark Leafy Greens: Vegetables such as spinach, kale, and collard greens...\n\n[Continue]",
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


