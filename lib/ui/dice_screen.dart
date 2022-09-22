import 'dart:math';

import 'package:flutter/material.dart';

class DiceScreen extends StatefulWidget {
  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {

  // state..
  int _firstDiceNumber = 1;
  int _secondDiceNumber = 2;

  void _rollDice() {
    // 주사위 숫자 2개를 랜덤하게 생성
    Random random = Random();
    setState(() {
      _firstDiceNumber = random.nextInt(6) + 1;
      _secondDiceNumber = random.nextInt(6) + 1;
    });

    print('dice number $_firstDiceNumber, $_secondDiceNumber');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          children: [
            Expanded(
             child: TextButton(
                 child: Image.asset('images/dice$_firstDiceNumber.png'),
               onPressed: () => { _rollDice() },
             ),
        ),
        Expanded(
            child: TextButton(
                child: Image.asset('images/dice$_secondDiceNumber.png'),
              onPressed: (){ _rollDice(); },
            ),
        ),
      ]),
    );
  }
}
