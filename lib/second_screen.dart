import 'dart:developer';

import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool isClickable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: voteOnce(),
      ),
    );
  }

  Widget voteOnce() {
    return GestureDetector(
      child: Card(
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.blueGrey,
          child: Text(
            "Vote Once",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      onTap: () {
        if (isClickable) {
          log("Clicked");
          setState(() {
            isClickable = false;
          });
        }
      },
    );
  }
}
