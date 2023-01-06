import 'package:flutter/material.dart';

class CardView extends StatefulWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  CardViewState createState() => CardViewState();
}

class CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.red],
          begin:Alignment.centerLeft,
          end:Alignment.centerRight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
    );
  }
}
