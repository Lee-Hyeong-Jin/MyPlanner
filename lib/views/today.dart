import 'package:flutter/material.dart';
import 'package:calendar_view/calendar_view.dart';

class TimeTable extends StatefulWidget {
  const TimeTable ({Key? key}) : super(key: key);

  @override
  TimeTableState createState() => TimeTableState();
}

class TimeTableState extends State<TimeTable> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WeekView(),
    );
  }
}
