import 'package:flutter/material.dart';

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
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(24),
          child: ListView(
          children: [
            _header(context),
            _inputFeild(context),
            _forgotPassword(context),
            _signup(context),

          ],
          ),
      )
      ),
    );
  }

  _header(context){
    return Column(
      children: [
        Text("Sign In",style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  _inputFeild(context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Username",
            border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(18),
              borderSide: BorderSide.none),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true
           ),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(18),
              borderSide: BorderSide.none),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true
           ),
           obscureText: true,
        ),
        SizedBox(height: 10),
        ElevatedButton(onPressed: () {},
         child: Text(
          "Login",
          style: TextStyle(fontSize: 20),
         ),
         style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(vertical: 16),
         ),
         )
      ],

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
          onPressed: () {}, 
          child: const Text("SignUp")
          )
      ],
    );
  }
}

