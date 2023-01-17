import 'package:flutter/material.dart';

class TimeTable extends StatefulWidget {
  const TimeTable ({Key? key}) : super(key: key);

  @override
  TimeTableState createState() => TimeTableState();
}

class TimeTableState extends State<TimeTable> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Colors.white,
    );
  }
}
