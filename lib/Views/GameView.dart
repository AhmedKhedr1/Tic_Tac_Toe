import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Widgets/button_bar.dart';
import 'package:tic_tac_toe/constant.dart';

class Gameview extends StatelessWidget {
  Gameview({required this.Player1Name, required this.Player2Name, super.key});
  String Player1Name;
  String Player2Name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
              ),
              itemCount: 9,
              itemBuilder: (context, index) {},
            ),
          ),
          button_Bar()
        ],
      ),
    );
  }
}
