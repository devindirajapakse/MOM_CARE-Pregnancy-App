import 'package:flutter/material.dart';
import 'package:momcare/screens/pregnantMother/mom_Home.dart';
import 'package:momcare/widgets/appBar.dart';
import 'package:momcare/widgets/pregnatMotherWidgets/MomArticle.dart';

class momArticles extends StatefulWidget {
  const momArticles({super.key});

  @override
  State<momArticles> createState() => _momArticlesState();
}

class _momArticlesState extends State<momArticles> {
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
            children: const [
              MomArticle(),
              MomArticle(),
            ],
          ),
        ),
      ),
    );
  }
}
