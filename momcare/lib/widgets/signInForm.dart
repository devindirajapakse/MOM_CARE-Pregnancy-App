import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:momcare/colors.dart';
import 'package:momcare/screens/forgotPassword.dart';
import 'package:momcare/screens/landingScreen.dart';
import 'package:momcare/screens/midwife/midHome1.dart';
import 'package:momcare/screens/midwife/signUpScreen.dart';
import 'package:momcare/screens/pregnantMother/mom_Home.dart';
import 'package:momcare/screens/services/auth_Services.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  onClickSignin() async{
    print('User name is 1 :'+ username.text + ' '+ password.text );

    try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: username.text,
    password: password.text,
  );

   
   print(credential.user!.uid);
  
  await FirebaseFirestore.instance
        .collection('midwife')
        .doc(credential.user!.uid)
        .get()
        .then((DocumentSnapshot snapshot) {
      if (snapshot.exists) {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>midHome1()));
      }
    }).catchError((error) {
      final snackBar =  SnackBar(
             content: Text('Invalid user'),
           );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
    });

    await FirebaseFirestore.instance
        .collection('mother')
        .doc(credential.user!.uid)
        .get()
        .then((DocumentSnapshot snapshot) {
      if (snapshot.exists) {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>MomHome()));
      }
    }).catchError((error) {
final snackBar =  SnackBar(
             content: Text('Invalid user'),
           );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
    });


} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    final snackBar =  SnackBar(
             content: Text('Invalid user'),
           );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
  } else if (e.code == 'wrong-password') {
    final snackBar = SnackBar(
             content: Text('Invalid user'),
           );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

    
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          TextField(
            controller: username,
            decoration: const InputDecoration(hintText: 'Email'),
          ),
          const SizedBox(
            height: 16.0,
          ),
          TextField(
            controller: password,
            obscureText: true,
            decoration: const InputDecoration(hintText: 'Password'),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Align(
            alignment: Alignment.topRight,
            child: _forgotPassword(context),
          ),
          const SizedBox(
            height: 16.0,
          ),
          MaterialButton(
            onPressed: () {
              onClickSignin();
            },
            child: Container(
              width: 150,
              decoration: BoxDecoration(
                color: kButtonColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          _signup(context),
        ],
      ),
    );
  }

  Widget _forgotPassword(context) {
    return TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Forgotpassword()));
        },
        child: const Text("Forgot Password?"));
  }

  Widget _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?"),
        TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => landingScreen()));
            },
            child: const Text("SignUp"))
      ],
    );
  }

}
