import 'package:flutter/material.dart';

class AddBox extends StatefulWidget {
  const AddBox ({Key? key}) : super(key: key);

  @override
  AddBoxState createState() => AddBoxState();
}

class AddBoxState extends State<AddBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom( 
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        ),
        onPressed: () {},
        child: Column(
          children: const <Widget> [
            Icon(Icons.add, size: 30, color: Colors.white),
            Text("알람 추가", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 18)),
          ]
        )
      )
    );
  }
}
