// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

class PlayerNameBar extends StatelessWidget {
  final String Player1Name;
  final String Player2Name;
  final bool isxturn;

  const PlayerNameBar({
    required this.Player1Name,
    required this.Player2Name,
    required this.isxturn,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              Player1Name,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: isxturn ? Colors.green : Colors.white,
              ),
            ),
            const Text(
              "X",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ],
        ),
        const Text(
          "VS",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Column(
          children: [
            Text(
              Player2Name,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: isxturn ? Colors.white : Colors.green,
              ),
            ),
            const Text(
              "O",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
