import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(home: BallPage()),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text("Ask 😕 Alexa"),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int num = 1;

  void changeNum() {
    setState(() {
      num = Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: FlatButton(
            onPressed: () {
              changeNum();
            },
            child: Image.asset("images/ball$num.png")),
      ),
    );
  }
}
