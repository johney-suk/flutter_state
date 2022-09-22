import 'package:flutter/material.dart';

class DiceScreen extends StatelessWidget {
  const DiceScreen({Key? key}) : super(key: key);

  void _rollDice(BuildContext context) {
    final snackBar = SnackBar(content: Text('주사위 클릭..'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          children: [
            Expanded(
             child: TextButton(
                 child: Image.asset('images/dice3.png'),
               onPressed: () => { _rollDice(context) },
             ),
        ),
        Expanded(
            child: GestureDetector(
                child: Image.asset('images/dice5.png'),
              onTap: (){ _rollDice(context); },
            ),
        ),
      ]),
    );
  }
}
