import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:momcare/colors.dart';
import 'package:momcare/screens/midwife/midHome2.dart';
import 'package:momcare/screens/midwife/mid_Navbar.dart';
import 'package:momcare/widgets/appBar.dart';

class midHome1 extends StatefulWidget {
  const midHome1({super.key});

  @override
  State<midHome1> createState() => _midHome1State();
}

class _midHome1State extends State<midHome1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const midNavbar(),
      appBar: CustomAppBar(
        leadingIcon: null,
        onPressed: () {},
      ),
      
      
      body: StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('mother').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading");
        }
       

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
          Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
            return userCard(document.id, data['name']);
          }).toList(),
        );
      },
    ),
    );
  }


  Widget userCard(String userID, String name){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Center(
                child: SizedBox(
                  height: 48,
                  width: 350,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => midHome2(userID: userID, name: name)));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffDECBEC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      name,
                      style:const TextStyle(
                        fontSize: 18,
                        color: kDarkcolor,
                      ),
                    ),
                  ),
                ),
              ),
    );
  }
}

