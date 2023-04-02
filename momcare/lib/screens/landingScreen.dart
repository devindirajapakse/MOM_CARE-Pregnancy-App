import 'package:flutter/material.dart';
import 'package:momcare/screens/signInScreen.dart';
import 'package:momcare/screens/test.dart';
 class landingScreen extends StatefulWidget {
  const landingScreen({super.key});

  @override
  State<landingScreen> createState() => _landingScreenState();
}

class _landingScreenState extends State<landingScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        color: Color(0xffDECBEC),
        
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100,),
              Container(
                child: Image(
                  image: AssetImage ("images/logo.png"),
                  height: 230,
                  ),
              ),
              

              const Center(
                child: Text(
                  "I'm a",
                      style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 70.0),
                          Center(
                            child: SizedBox(
                              width: 200,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
                                },
                                child: Text('Doctor', style: TextStyle(fontSize: 18),),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff835BA0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  elevation: 0,
                                ),
                              ),
                            ),
                          ),
              const SizedBox(height: 20.0),
                          Center(
                            child: SizedBox(
                              width: 200,
                              height: 50,
                              child: ElevatedButton(
                                 onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
                                },
                                child: Text('Midwife', style: TextStyle(fontSize: 18),),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff835BA0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  elevation: 0,
                                ),
                              ),
                            ),
                          ),
              const SizedBox(height: 20.0),
                          Center(
                            child: SizedBox(
                              width: 200,
                              height: 50,
                              child: ElevatedButton(
                                 onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
                                },
                                child: Text('Pregnant Mother', style: TextStyle(fontSize: 18),),
                                style: ElevatedButton.styleFrom(
                                  
                                  backgroundColor: Color(0xff835BA0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  elevation: 0,
                                ),
                              ),
                            ),
                          ),

                          
            ],
          ),
        ),
      ),
    );
  }
}