import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constant.dart';

class GameButton extends StatefulWidget {
  GameButton({
    super.key,
  });

  @override
  State<GameButton> createState() => _GameButtonState();
}

class _GameButtonState extends State<GameButton> {
  String Gametext ='';
  bool isxturn=true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (Gametext.isEmpty) {
          setState(() {
            Gametext = isxturn?'X':'O';
            isxturn= !isxturn;
          });
        }
      },
      child: Container(
        decoration: BoxDecoration(
            color: Kgamebuttoncolor, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            Gametext,
            style:  TextStyle(
                color:Gametext=='X'? Colors.red:Colors.blue, fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
