
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Widgets/CustomButton.dart';

class button_Bar extends StatelessWidget {
  const button_Bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomButton(
            ButtonHeight: 50,
            Buttonwidth: 140,
            action: () {},
            ButtonText: 'Reset',
            ButtonColor: Colors.green),
        CustomButton(
            ButtonHeight: 50,
            Buttonwidth: 140,
            action: () {
              Navigator.pop(context);
            },
            ButtonText: 'Quit',
            ButtonColor: Colors.red)
      ],
    );
  }
}
