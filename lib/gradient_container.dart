import 'package:basic_app/style_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var endAlignment = Alignment.bottomRight;
var startAlignment = Alignment.topLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  void RollDice() {
    print('test');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: Alignment.bottomRight),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-2.png',
              width: 300,
            ),
            const SizedBox(height: 20,),
            TextButton(
                onPressed: RollDice,
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white, ),
                child: Text(
                  'Roll Dice',
                ))
          ],
        ),
      ),
    );
  }
}
