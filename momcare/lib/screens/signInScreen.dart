import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:momcare/colors.dart';
import 'package:momcare/screens/signUpScreen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  onClickSignin(){}

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
          height: 150,
          width: 200,
          decoration: const BoxDecoration(
            image :DecorationImage(image: AssetImage('images/logo.png'),),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 500,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), 
                topRight: Radius.circular(30),),
            ),
           child: Padding(
             padding: const EdgeInsets.all(20),
             child: Column(
              children: [
                const Text('Sign In', textAlign: TextAlign.center,style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
      
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: TextField(
                    controller: username,
                    decoration: const InputDecoration(hintText: 'Username'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: TextField(
                    controller: password,
                    decoration: const InputDecoration(hintText: 'Password'),
                  ),
                ),
                
                _forgotPassword(context),

                const SizedBox(height: 10),
      
                MaterialButton(onPressed: ()=> onClickSignin(), child: Container(
                  width: 150,
                  decoration: BoxDecoration(color: kButtonColor, borderRadius: BorderRadius.circular(30),),
                  child:const Center(child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text('Sign In', 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,),
                      ),
                  ),),
                ),
                ),

            _signup(context),
              ],
             ),
           ),
          ),
        ),
      ],
      ),
    );
  }
  _forgotPassword(context){
    return TextButton(onPressed: () {}, child: const Text("Forgot Password?"));
  }

  _signup(context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?"),
        TextButton(
          onPressed: () { 
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
          }, 
          child: const Text("SignUp")
          )
      ],
    );
  }
}