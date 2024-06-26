import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home : Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        backgroundColor: Colors.blue,
        title: Text('Ask Me Anything!',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          )
        ),
      ),
      body: MagicBall(),
      )
  ));
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ans = 1 ;

  void set(){
    setState(() {
      ans = Random().nextInt(5) +1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () => set(),
        child: Image.asset("images/ball$ans.png")),
    );
  }
}