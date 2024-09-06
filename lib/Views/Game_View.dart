import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:tic_tac_toe/Widgets/Game_Button.dart';

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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Game_Bar(),
              const SizedBox(
                height: 150,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1),
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return const Game_Button();
                  },
                ),
              )
            ],
          ),
        ));
  }
}

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
        Divider(
          color: Colors.white,
          thickness: 2,
          height: 20,
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
