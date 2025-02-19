import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  //var activeDiceImage = 'assets/images/dice-2.png';
  final randomizer=Random();
  var CurrentDiceRoll=2;
  void rollDice() {
    setState(() {
      CurrentDiceRoll = randomizer.nextInt(6)+1;
    });
    print('changin image!....');
  }
  @override
  Widget build(context) {
    return Column(
        mainAxisSize: MainAxisSize.max,
        //to take the dice to the center of column
        children: [
          Image.asset(
            'assets/images/dice-$CurrentDiceRoll.png',
            width: 200,
          ),
          const SizedBox(height: 20),
          TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(
                      top: 20),
                  foregroundColor: Colors.black,
                  textStyle: const TextStyle(
                      fontSize: 28
                  )
              ),
              child: Text('Roll Dice')
          ),
        ]
    );
  }
}