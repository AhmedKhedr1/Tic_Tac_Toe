import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Widgets/Custom_Button.dart';
import 'package:tic_tac_toe/Widgets/Game_Bar.dart';
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
    String text = 'x';
    return Scaffold(
        backgroundColor: Color(0xff323D58),
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
              Game_Bar(
                player1Name: widget.player1Name,
                player2Name: widget.player2Name,
              ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                flex: 2,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1),
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return Game_Button(ontap: () {
                      
                    },

                    );
                  },
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Custom_button(
                        text: 'Restart',
                        onTap: () {},
                      ),
                      Custom_button(
                        text: 'Quit',
                        onTap: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
