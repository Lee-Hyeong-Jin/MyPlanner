import 'package:flutter/material.dart';
import 'package:calendar_view/calendar_view.dart';

class Calendar extends StatefulWidget {
  const Calendar ({Key? key}) : super(key: key);

  @override
  CalendarState createState() => CalendarState();
}

class CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MonthView(),
    );
  }
}
