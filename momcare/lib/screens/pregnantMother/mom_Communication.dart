import 'package:flutter/material.dart';


class mom_Communicaton extends StatefulWidget {
  const mom_Communicaton({super.key});

  @override
  State<mom_Communicaton> createState() => _mom_CommunicatonState();
}

class _mom_CommunicatonState extends State<mom_Communicaton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    appBar: AppBar(
        backgroundColor: const Color(0xffDECBEC),
        toolbarHeight: 60,
        centerTitle: true,
        title: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('images/logo.png'),),
          ),
        ),
      ),

      body: Center(
        child: ListView(
          children: [
            const SizedBox(height: 190.0),
              Center(
                child: SizedBox(
                  width: 240,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Chat with Doctor',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff835BA0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      elevation: 0,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30.0),
              Center(
                child: SizedBox(
                  width: 240,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Chat with Midwife',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff835BA0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      elevation: 0,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30.0),
              Center(
                child: SizedBox(
                  width: 240,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Connect with expierience mothers',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff835BA0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      elevation: 0,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30.0),
              
          ],
        ),
      ),
    );
  }
}