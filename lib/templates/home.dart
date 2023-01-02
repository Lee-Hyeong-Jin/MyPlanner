import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
      setState(() {
              
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formattedTime = DateFormat("HH:mm:ss").format(now);

    return Scaffold(
      backgroundColor: const Color(0xFF383F51),
      body: SafeArea( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              formattedTime,
              style: const TextStyle(color: Colors.white, fontSize: 64)
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: const <Widget> [
                    Icon(Icons.schedule),
                    Text("alarm"),
                  ],
                ),
                SizedBox(
                  height: 200,
                  child: ListView(
                    children: const <Widget> [
                      Text("item1")
                    ],
                  )
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: const <Widget> [
                    Icon(Icons.today),
                    Text("시간표"),
                  ],
                ),
                SizedBox(
                  height: 200,
                  child: ListView(
                    children: const <Widget> [
                      Text("item1")
                    ],
                  )
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: const <Widget> [
                    Icon(Icons.calendar_month),
                    Text("달력"),
                  ],
                ),
                SizedBox(
                  height: 200,
                  child: ListView(
                    children: const <Widget> [
                      Text("item1")
                    ],
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }

}
