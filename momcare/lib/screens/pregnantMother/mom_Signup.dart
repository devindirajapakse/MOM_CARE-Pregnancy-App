import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:momcare/colors.dart';

class Momsignup extends StatefulWidget {
  const Momsignup({super.key});

  @override
  State<Momsignup> createState() => _MomsignupState();
}

class _MomsignupState extends State<Momsignup> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpass = TextEditingController();
  TextEditingController address= TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController nic = TextEditingController();
  


 onClickSignup(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
      children: [
        Container(
          height: 160,
          width: 200,
          decoration: BoxDecoration(
            image:DecorationImage(image: AssetImage('images/logo.png'),),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30),),
            ),
           child: Padding(
             padding: const EdgeInsets.all(20),
             child: Column(
              children: [
                const Text('Sign Up', textAlign: TextAlign.center,style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
      
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: TextField(
                    controller: name,
                    decoration: const InputDecoration(hintText: 'Name'),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: TextField(
                    controller: email,
                    decoration: const InputDecoration(hintText: 'Email'),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: TextField(
                    controller: password,
                    decoration: const InputDecoration(hintText: 'Password'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: TextField(
                    controller: confirmpass,
                    decoration: const InputDecoration(hintText: 'Confirm Password'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: TextField(
                    controller: address,
                    decoration: const InputDecoration(hintText: 'Address'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: TextField(
                    controller: phone,
                    decoration: const InputDecoration(hintText: 'Phone Number'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: TextField(
                    controller: nic,
                    decoration: const InputDecoration(hintText: 'NIC'),
                  ),
                ),
               
      
                const SizedBox(height: 10),
      
                MaterialButton(onPressed: ()=> onClickSignup(), child: Container(
                  width: 150,
                  decoration: BoxDecoration(color: kButtonColor, borderRadius: BorderRadius.circular(30),),
                  child:const Center(child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text('Signup', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),),
                  ),),
                ),
                ),
              ],
             ),
           ),
          ),
        ),
      ],
      ),
    );
  }

  




}
