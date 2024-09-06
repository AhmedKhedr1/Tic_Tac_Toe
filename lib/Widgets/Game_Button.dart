
import 'package:flutter/material.dart';

class Game_Button extends StatelessWidget {
  const Game_Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(12),
      ),
      child:const Center(
          child: Text(
        'O',
        style: TextStyle(color: Colors.white, fontSize: 70),
      )),
    );
  }
}
