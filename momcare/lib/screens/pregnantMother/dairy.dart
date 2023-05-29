import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:momcare/screens/pregnantMother/mom_MainFoods.dart';
import 'package:momcare/widgets/appBar.dart';

class Dairy extends StatefulWidget {
  const Dairy({Key? key}) : super(key: key);

  @override
  State<Dairy> createState() => _DairyState();
}

class _DairyState extends State<Dairy> {
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
                  "Dairy",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  showFullDescription
                      ? "Dairy products are an important source of calcium, vitamin D, and other essential nutrients for pregnant women. Here are some types of dairy products and their pros and cons:\n\nMilk: Milk is an excellent source of calcium, vitamin D, and protein. It also contains phosphorus, potassium, and vitamins A and B12. Pregnant women should aim to consume 2-3 servings of milk or other dairy products per day. However, some women may be lactose intolerant or have an allergy to milk, in which case they should avoid dairy or choose lactose-free milk or milk alternatives like soy milk or almond milk.\n\nCheese: Cheese is another good source of calcium and protein. However, some types of cheese, such as blue cheese, feta, and soft cheeses like brie and camembert, may contain harmful bacteria like listeria that can cause food poisoning. Pregnant women should avoid these types of cheese or make sure they are made from pasteurized milk.\n\nYogurt: Yogurt is a good source of calcium, protein, and probiotics, which can help with digestion and immune function. However, like cheese, some types of yogurt may contain added sugars or flavors, which can be high in calories. Pregnant women should choose plain, low-fat or non-fat yogurt without added sugars or artificial sweeteners.\n\nButter: Butter is high in saturated fat and cholesterol and should be consumed in moderation. Pregnant women can use small amounts of butter for cooking or flavoring, but should choose healthier fats like olive oil or avocado oil for most cooking purposes.\n\nIce cream: Ice cream is a high-calorie dessert that should be consumed in moderation. It is also high in sugar and fat, which can contribute to weight gain and gestational diabetes. Pregnant women can choose low-fat or non-fat ice cream or frozen yogurt, or make their own healthier versions using fruit and low-fat dairy products.\n\nIn summary, dairy products are an important part of a healthy diet during pregnancy, but pregnant women should choose low-fat or non-fat options and avoid certain types of cheese and high-calorie desserts."
                      : "Dairy products are an important source of calcium, vitamin D, and other essential nutrients for pregnant women. Here are some types of dairy products and their pros and cons:\n\nMilk: Milk is an excellent source of calcium, vitamin D, and protein. It also contains phosphorus, potassium, and vitamins A and B12. Pregnant women should aim to consume 2-3 servings of milk or other dairy products per day. However, some women may be lactose intolerant or have an allergy to milk, in which case they should avoid dairy or choose lactose-free milk or milk alternatives like soy milk or almond milk.\n\nCheese: Cheese is another good source of calcium and protein. However, some types of cheese, such as blue cheese, feta, and soft cheeses like brie and camembert, may contain harmful bacteria like listeria that can cause food poisoning. Pregnant women should avoid these types of cheese or make sure they are made from pasteurized milk.\n\nYogurt: Yogurt is a good source of calcium, protein, and probiotics, which can help with digestion and immune function. However, like cheese, some types of yogurt may contain added sugars or flavors, which can be high in calories. Pregnant women should choose plain, low-fat or non-fat yogurt without added sugars or artificial sweeteners.\n\nButter: Butter is high in saturated fat and cholesterol and should be consumed in moderation. Pregnant women can use small amounts of butter for cooking or flavoring, but should choose healthier fats like olive oil or avocado oil for most cooking purposes.\n\nIce cream: Ice cream is a high-calorie dessert that should be consumed in moderation. It is also high in sugar and fat, which can contribute to weight gain and gestational diabetes. Pregnant women can choose low-fat or non-fat ice cream or frozen yogurt, or make their own healthier versions using fruit and low-fat dairy products.\n\n[Continue]",
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
