import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constant.dart';

class GameButton extends StatefulWidget {
  GameButton({
    required this.onturnchange,
    super.key,
    required this.isxturn,
  });
  final bool isxturn;
  final VoidCallback onturnchange;

  @override
  State<GameButton> createState() => _GameButtonState();
}

class _GameButtonState extends State<GameButton> {
  String Gametext = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (Gametext.isEmpty) {
          setState(() {
            Gametext = widget.isxturn ? 'X' : 'O';
          });
          widget.onturnchange();
        }
      },
      child: Container(
        decoration: BoxDecoration(
            color: Kgamebuttoncolor, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            Gametext,
            style: TextStyle(
                color: Gametext == 'X' ? Colors.red : Colors.blue,
                fontSize: 50,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
