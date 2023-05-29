import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:momcare/screens/pregnantMother/mom_MainFoods.dart';
import 'package:momcare/widgets/appBar.dart';

class Grains extends StatefulWidget {
  const Grains({Key? key}) : super(key: key);

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
                  "Grains",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  showFullDescription
                      ? "Grains are an essential part of a healthy and balanced diet, especially during pregnancy. They provide necessary nutrients, including fiber, vitamins, and minerals, that are vital for both the mother and the baby's growth and development. Here are some types of grains that are recommended during pregnancy, along with their pros and cons:\n\nWhole grain bread: Whole grain bread is a great source of fiber and essential nutrients like folate, iron, and zinc. It helps regulate digestion, maintains blood sugar levels, and provides energy. However, some whole grain bread can be high in sodium or added sugars, so it's important to read the labels carefully.\n\nOatmeal: Oatmeal is a rich source of fiber, vitamins, and minerals like iron and magnesium. It is also low in fat and high in protein, making it an excellent breakfast option for pregnant women. However, some pre-packaged oatmeal can be high in added sugars, so it's important to choose plain or low-sugar options.\n\nBrown rice: Brown rice is an excellent source of fiber and essential nutrients like thiamine, niacin, and magnesium. It also helps regulate digestion and prevents constipation during pregnancy. However, brown rice can contain arsenic, which is a toxic substance found in soil and water. To reduce the risk, it's best to rinse the rice thoroughly before cooking and limit consumption to one to two servings per week.\n\nQuinoa: Quinoa is a gluten-free grain that is rich in protein, fiber, and essential nutrients like folate, iron, and magnesium. It also helps regulate blood sugar levels and provides energy. However, quinoa can be expensive and may not be easily available in all regions.\n\nWhole wheat pasta: Whole wheat pasta is a great source of fiber, protein, and essential nutrients like folate and iron. It helps regulate digestion and provides energy. However, some whole wheat pasta can be high in sodium or added sugars, so it's important to read the labels carefully.\n\nIn general, it's important to choose whole grain options whenever possible as they provide more fiber and nutrients than refined grains. However, it's also important to read the labels and choose low-sugar and low-sodium options. Additionally, some grains may contain allergens or toxins, so it's important to consume them in moderation and follow the guidance of a healthcare provider."
                      : "Grains are an essential part of a healthy and balanced diet, especially during pregnancy. Here are some of the types of grains that are particularly beneficial for pregnant women:\n\nWhole grain bread:...\n\n[Continue]",
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
