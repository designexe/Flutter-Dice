import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Würfel'),
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var rand = new Random();
  var leftDiceNumber = 2;
  var rightDiceNumber = 2;

  void diceRole() {
    setState(() {
      leftDiceNumber = rand.nextInt(6) + 1;
      rightDiceNumber = rand.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                diceRole();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                diceRole();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}
