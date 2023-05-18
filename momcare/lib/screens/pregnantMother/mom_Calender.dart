import 'package:calendar_builder/calendar_builder.dart';
import 'package:flutter/material.dart';
import 'package:momcare/colors.dart';
import 'package:momcare/screens/pregnantMother/mom_Home.dart';
import 'package:momcare/widgets/appBar.dart';

class momCalender extends StatefulWidget {
  const momCalender({super.key});

  @override
  State<momCalender> createState() => _momCalenderState();
}

class _momCalenderState extends State<momCalender> {
  String currentEvent = 'There are no events';

  @override
  void initState() {
    currentEvent = getEventForDate(DateTime.now());
    super.initState();
  }

void handleDateClicked(OnDateSelected dateSelected) {
  DateTime selectedDate = dateSelected.selectedDate; 

  setState(() {
    currentEvent = getEventForDate(selectedDate); 
  });
}


  String getEventForDate(DateTime date) {
    // Implement your logic to retrieve the event for the given date
    // Return the corresponding event text
    return 'Tell my parents that they are grandparents now!';
  }

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
            children: [
              Container(
                height: 450,
                child: SingleChildScrollView(
                  child: CbMonthBuilder(
                    cbConfig: CbConfig(
                      startDate: DateTime(2023),
                      endDate: DateTime(2026),
                      selectedDate: DateTime(2023, 1, 4),
                      selectedYear: DateTime(2023),
                      currentDay: DateTime.now(),
                    ),
                    onDateClicked: handleDateClicked, 
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: kMainColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(26.0),
                  child: Text(
                    currentEvent,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: kTopicColor,
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
