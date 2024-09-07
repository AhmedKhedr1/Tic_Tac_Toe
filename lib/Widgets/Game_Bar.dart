
import 'package:flutter/material.dart';

class Game_Bar extends StatelessWidget {
  const Game_Bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              'ahmed',
              style: TextStyle(fontSize: 25, color: Colors.amber),
            ),
            Text(
              '0',
              style: TextStyle(fontSize: 25, color: Colors.amber),
            ),
          ],
        ),
         SizedBox(
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
              'ahmed',
              style: TextStyle(fontSize: 25, color: Colors.amber),
            ),
            Text(
              '0',
              style: TextStyle(fontSize: 25, color: Colors.amber),
            ),
          ],
        ),
      ],
    );
  }
}
