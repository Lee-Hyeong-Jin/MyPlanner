import 'package:flutter/material.dart';
import 'package:planner/assets/prefabs/card_view.dart';

class SchedulePreview extends StatefulWidget {
  const SchedulePreview ({ Key? key }) : super(key: key);

  @override
  SchedulePreviewState createState() => SchedulePreviewState();
}

class SchedulePreviewState extends State<SchedulePreview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Column(
        children: <Widget> [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              const Text("알람", style: TextStyle(color: Colors.white, fontSize: 18)),
              const SizedBox(height: 30),
              Row(
                children: const <Widget> [
                  Icon(Icons.add, color: Colors.white),
                  Text("더보기", style: TextStyle(color: Colors.white, fontSize: 12)),
                ]
              )
            ],
          ),
          const SizedBox(
            child: CardView(),
          )
        ]
      )
    );
  }
}
