import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text('DICE'),
          backgroundColor: Colors.purple,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftno = 1;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(

            child: TextButton(
                onPressed: () {
                  setState(() {
                    leftno= Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('images/dice$leftno.png')),
          ),
    );
  }
}