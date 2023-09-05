import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Bola Mágica - Marco Leone Merini'),
        backgroundColor: Colors.red,
      ),
      body: BallPage(),
    ),
  ));
}

class BallPage extends StatefulWidget {
  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int answer = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16),
            ),
            onPressed: () {
              shakeBall();
            },
            child: Image.asset('images/ball$answer.png'),
          ),
        ],
      ),
    );
  }

  void shakeBall() {
    setState(() {
      var random = Random();
      answer = random.nextInt(5) + 1;
    });
  }
}
