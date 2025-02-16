// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Widgets/GameButton.dart';
import 'package:tic_tac_toe/Widgets/button_bar.dart';
import 'package:tic_tac_toe/constant.dart';

class Gameview extends StatefulWidget {
  Gameview({required this.Player1Name, required this.Player2Name, super.key});
  String Player1Name;
  String Player2Name;

  @override
  State<Gameview> createState() => _GameviewState();
}

class _GameviewState extends State<Gameview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.9,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return GameButton();
                },
              ),
            ),
            const button_Bar()
          ],
        ),
      ),
    );
  }
}
