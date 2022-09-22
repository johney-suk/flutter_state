import 'package:flutter/material.dart';
import 'package:flutter_dice/ui/dice_screen.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('주사위  굴리기'),
        ),
        body: DiceScreen(),
      ),
    );
  }
}
