import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
   DiceRoller({super.key});



  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  final randomizer = Random();
  var currentDiceRoll =1;

  void RollDice() {
    setState(() {
       currentDiceRoll = randomizer.nextInt(6)+1;
      // print(currentDiceRoll);
      // print('assets/images/dice-${currentDiceRoll.toString()}.png');
    });

  }

  @override
  Widget build(BuildContext context) {
   return
     Column(
     mainAxisAlignment: MainAxisAlignment.center,
     mainAxisSize: MainAxisSize.min,
     children: [
       Image.asset(
         'assets/images/dice-${currentDiceRoll.toString()}.png',
         width: 300,
       ),
       const SizedBox(
         height: 20,
       ),
       TextButton(
           onPressed: RollDice,
           style: TextButton.styleFrom(
             foregroundColor: Colors.white,
           ),
           child: Text(
             'Roll Dice',
           ))
     ],
   );
  }
  
}
