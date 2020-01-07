import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.blueGrey[900],
    )
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "DiceRola",
    home: Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text("DiceRola"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDice() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                child: Image.asset("assets/images/dice$leftDiceNumber.png"),
                onPressed: () {
                  setState(() {
                    changeDice();
                  });
                },
              ),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                child: Image.asset("assets/images/dice$rightDiceNumber.png"),
                onPressed: () {
                  setState(() {
                   changeDice();
                  });
                },
              ),
            )),
          ],
        ),
      ),
    );
  }
}
