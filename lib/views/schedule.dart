import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:planner/assets/prefabs/add_box.dart';

import 'package:planner/assets/prefabs/card_view.dart';
import 'package:planner/data.dart';

class Schedule extends StatefulWidget {
  const Schedule ({ Key? key }) : super(key: key);

  @override
  ScheduleState createState() => ScheduleState();
}

class ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Column(
        children: <Widget> [
          const Text("알람", style: TextStyle(color: Colors.white, fontSize: 50), textAlign: TextAlign.center,),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: alarms.map<Widget>((alarm) {
                return Column(
                  children: const <Widget> [
                    CardView()
                  ]
                );
              }).followedBy([
                DottedBorder(
                  strokeWidth: 1,
                  color: Colors.white,
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(24),
                  dashPattern: const [8, 6],
                  child: const AddBox(),
                )
              ]).toList(),
            )
          ),
        ]
      )
    );
  }
}
