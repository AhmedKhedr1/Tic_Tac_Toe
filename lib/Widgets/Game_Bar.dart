
import 'package:flutter/material.dart';

class Game_Bar extends StatelessWidget {
   Game_Bar({required this.player1Name,required this.player2Name});
String player1Name;
String player2Name;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              player1Name,
              style: TextStyle(fontSize: 25, color: Colors.amber),
            ),
           const Text(
              '0',
              style: TextStyle(fontSize: 25, color: Colors.amber),
            ),
          ],
        ),
        const SizedBox(
          height: 100,
           child: VerticalDivider(
            color: Colors.white,
            thickness: 4,
            width: 20,
            indent: 10, 
            endIndent: 10,
                   ),
         ),
        Column(
          children: [
            Text(
              player2Name,
              style: TextStyle(fontSize: 25, color: Colors.amber),
            ),
           const Text(
              '0',
              style: TextStyle(fontSize: 25, color: Colors.amber),
            ),
          ],
        ),
      ],
    );
  }
}
