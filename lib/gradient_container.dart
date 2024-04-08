import 'package:basic_app/style_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dice_roller.dart';

var endAlignment = Alignment.bottomRight;
var startAlignment = Alignment.topLeft;




class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1,this.color2, {super.key});
      // : color1 = Colors.deepPurple,
      //   color2 = Colors.indigo;

  // final List<Color> colors;
  final Color color1;
  final Color color2;



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2],
            begin: startAlignment,
            end: Alignment.bottomRight),
      ),
      child: Center(
        child: DiceRoller(),
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     Image.asset(
        //       activeDiceImage,
        //       width: 300,
        //     ),
        //     const SizedBox(
        //       height: 20,
        //     ),
        //     TextButton(
        //         onPressed: RollDice,
        //         style: TextButton.styleFrom(
        //           foregroundColor: Colors.white,
        //         ),
        //         child: Text(
        //           'Roll Dice',
        //         ))
        //   ],
        // ),
      )
    );
  }
}
