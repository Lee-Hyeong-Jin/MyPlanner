import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

//import 'package:planner/assets/today_preview.dart';
//import 'package:planner/assets/calendar_preview.dart';
//import 'package:planner/assets/schedule_preview.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState(); 
}

class HomeState extends State<Home> {
  @override void initState() {
    super.initState();
    
    //Do Your Stuff
    Timer.periodic(const Duration(seconds: 1), (timer) { 
      if(mounted) {
        setState(() {
              
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formattedTime = DateFormat("HH:mm:ss").format(now);

    return ListView(
      children: [
        Text(formattedTime, style: const TextStyle(color: Colors.white, fontSize: 50), textAlign: TextAlign.center,),
       // SchedulePreview(),
       // TodayPreview(),
       // CalendarPreview(),
      ],
    );
  }

}
