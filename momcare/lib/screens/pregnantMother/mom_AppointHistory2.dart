import 'package:flutter/material.dart';
import 'package:momcare/colors.dart';
import 'package:momcare/widgets/appBar.dart';

class mom_appointHistory2 extends StatefulWidget {
  const mom_appointHistory2({super.key});

  @override
  State<mom_appointHistory2> createState() => _mom_appointHistory2State();
}

class _mom_appointHistory2State extends State<mom_appointHistory2> {
  var orientation, size, height, width;

  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: CustomAppBar(
  onPressed: () {
    // Handle the back button press
  },
  leadingIcon: Icons.arrow_back,
),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    
                    child: Card(
                      color: kMainColor, // set card color to main color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(15.0), // set border radius
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(26.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Date: 2022-01-01',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: kTopicColor,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            const Text(
                              'Time: 14:30',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: kTopicColor,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    SizedBox(
                                      height: 26,
                                      child: Text(
                                        'Weight',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w700,
                                          color: kTopicColor,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    SizedBox(
                                      height: 26,
                                      child: Text(
                                        'Height',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w700,
                                          color: kTopicColor,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    SizedBox(
                                      height: 26,
                                      child: Text(
                                        'Sugar Level',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w700,
                                          color: kTopicColor,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    SizedBox(
                                      height: 26,
                                      child: Text(
                                        'Blood Pressure',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w700,
                                          color: kTopicColor,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    SizedBox(
                                      height: 26,
                                      child: Text(
                                        'Heartbeat of the body',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w700,
                                          color: kTopicColor,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    SizedBox(
                                      height: 26,
                                      child: Text(
                                        'Backache',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w700,
                                          color: kTopicColor,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    SizedBox(
                                      height: 26,
                                      child: Text(
                                        'Heaaches',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w700,
                                          color: kTopicColor,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    SizedBox(
                                      height: 26,
                                      child: Text(
                                        'Itchy Skin',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w700,
                                          color: kTopicColor,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Column(
                                    children: const [
                                      SizedBox(
                                        height: 26,
                                        child: Text(
                                          '65 kg',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700,
                                            color: kTopicColor,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      SizedBox(
                                        height: 26,
                                        child: Text(
                                          '163 cm',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700,
                                            color: kTopicColor,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      SizedBox(
                                        height: 26,
                                        child: Text(
                                          '240 mg/dL',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700,
                                            color: kTopicColor,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      SizedBox(
                                        height: 26,
                                        child: Text(
                                          '120 mmHg',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700,
                                            color: kTopicColor,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      SizedBox(
                                        height: 26,
                                        child: Text(
                                          '70 bpm',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700,
                                            color: kTopicColor,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      SizedBox(
                                        height: 26,
                                        child: Checkbox(
                                            value: true, onChanged: null),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      SizedBox(
                                        height: 26,
                                        child: Checkbox(
                                            value: true, onChanged: null),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      SizedBox(
                                        height: 26,
                                        child: Checkbox(
                                            value: true, onChanged: null),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    child: Card(
                      color: kMainColor, // set card color to main color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(15.0), // set border radius
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(26.0),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Date: 2022-01-01',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    color: kTopicColor,
                                  ),
                                ),
                                const SizedBox(height: 10.0),
                                const Text(
                                  'Time: 14:30',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    color: kTopicColor,
                                  ),
                                ),
                                const SizedBox(height: 10.0),
                                SizedBox(
                                  width: width - 130,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      SizedBox(
                                        height: 26,
                                        child: Text(
                                          'Itchy Skin',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700,
                                            color: kTopicColor,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 10.0),
                                        child: SizedBox(
                                          height: 26,
                                          child: Checkbox(
                                              value: true, onChanged: null),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Date: 2022-01-01',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    color: kTopicColor,
                                  ),
                                ),
                                const SizedBox(height: 10.0),
                                const Text(
                                  'Time: 14:30',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    color: kTopicColor,
                                  ),
                                ),
                                const SizedBox(height: 10.0),
                                SizedBox(
                                  width: width - 130,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      SizedBox(
                                        height: 26,
                                        child: Text(
                                          'Itchy Skin',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700,
                                            color: kTopicColor,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 10.0),
                                        child: SizedBox(
                                          height: 26,
                                          child: Checkbox(
                                              value: true, onChanged: null),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Date: 2022-01-01',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    color: kTopicColor,
                                  ),
                                ),
                                const SizedBox(height: 10.0),
                                const Text(
                                  'Time: 14:30',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    color: kTopicColor,
                                  ),
                                ),
                                const SizedBox(height: 10.0),
                                SizedBox(
                                  width: width - 130,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      SizedBox(
                                        height: 26,
                                        child: Text(
                                          'Itchy Skin',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700,
                                            color: kTopicColor,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 10.0),
                                        child: SizedBox(
                                          height: 26,
                                          child: Checkbox(
                                              value: true, onChanged: null),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Date: 2022-01-01',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    color: kTopicColor,
                                  ),
                                ),
                                const SizedBox(height: 10.0),
                                const Text(
                                  'Time: 14:30',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    color: kTopicColor,
                                  ),
                                ),
                                const SizedBox(height: 10.0),
                                SizedBox(
                                  width: width - 130,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      SizedBox(
                                        height: 26,
                                        child: Text(
                                          'Itchy Skin',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700,
                                            color: kTopicColor,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 10.0),
                                        child: SizedBox(
                                          height: 26,
                                          child: Checkbox(
                                              value: true, onChanged: null),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                      ),
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
