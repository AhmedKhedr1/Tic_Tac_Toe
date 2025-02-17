// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Widgets/GameButton.dart';
import 'package:tic_tac_toe/Widgets/PlayerNameBar.dart';
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
  bool isxturn = true;
  void onchange() {
    setState(() {
      isxturn = !isxturn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 80, bottom: 30, right: 14, left: 14),
        child: Column(
          children: [
            PlayerNameBar(
              Player1Name: widget.Player1Name,
              Player2Name: widget.Player2Name,
              isxturn: isxturn,
            ),
            const SizedBox(height: 20),
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
                  return GameButton(
                    onturnchange: onchange,
                    isxturn: isxturn,
                  );
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
