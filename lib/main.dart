import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:planner/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CalendarControllerProvider (
      controller: EventController(),
      child: MaterialApp(
        title: "MyPlanner",
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: const HomePage(),
      )
    );
  }
}
