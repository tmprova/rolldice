import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  // var activeDiceImage = 'assets/images/dice-2.png';
  var currentdiceRoll = 2;
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentdiceRoll.png",
          width: 180,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: () {
              setState(() {
                // activeDiceImage = 'assets/images/dice-4.png';
                currentdiceRoll = randomizer.nextInt(6) + 1;
                // currentdiceRoll = Random().nextInt(6) + 1;
              });
            },
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text("Roll Dice!"))
      ],
    );
  }
}
