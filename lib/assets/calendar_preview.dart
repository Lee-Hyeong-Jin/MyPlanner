import 'package:flutter/material.dart';

class CalendarPreview extends StatefulWidget {
  const CalendarPreview ({ Key? key }) : super(key: key);

  @override
  CalendarPreviewState createState() => CalendarPreviewState();
}

class CalendarPreviewState extends State<CalendarPreview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 30),
      child: Column(
        children: <Widget> [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              const Text("오늘 일정", style:TextStyle(color: Colors.white, fontSize: 18)),
              Row(
                children: const <Widget> [
                  Icon(Icons.add, color: Colors.white,),
                  Text("자세히보기", style: TextStyle(color: Colors.white, fontSize:12)),
                ],
              )
            ]
          ),
        ]
      )
    );
  }
}
