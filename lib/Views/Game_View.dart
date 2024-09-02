import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GameView extends StatefulWidget {
  GameView({super.key, required this.player1Name, required this.player2Name});
  String player1Name;
  String player2Name;

  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff323D58),
      appBar: AppBar(
        backgroundColor: Color(0xff323D58),
        centerTitle: true,
        title: const Text(
          'Tic Tac Toe',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column()
    );
  }
}
