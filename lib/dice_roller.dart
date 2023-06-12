import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 180,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: () {
              setState(() {
                activeDiceImage = 'assets/images/dice-4.png';
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
