import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constant.dart';

class GameButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const GameButton({
    required this.text,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Kgamebuttoncolor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: text == 'X' ? Colors.red : Colors.blue,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
