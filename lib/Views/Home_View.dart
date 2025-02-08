import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Views/Game_view.dart';
import 'package:tic_tac_toe/Widgets/Custom_Button.dart';
import 'package:tic_tac_toe/Widgets/Custom_TextField.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final TextEditingController Player1controller = TextEditingController();
  final TextEditingController Player2controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff323D58),
      appBar: AppBar(
        backgroundColor: const Color(0xff323D58),
        centerTitle: true,
        title: const Text(
          'Tic Tac Toe',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                children: [
                  Text(
                    'Enter Players Name',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ],
              ),
              Custom_TextField(
                controller: Player1controller,
                valdiator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Name';
                  } else {
                    return null;
                  }
                },
                hint: 'Enter Player 1 Name',
              ),
              Custom_TextField(
                controller: Player2controller,
                valdiator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Name';
                  } else {
                    return null;
                  }
                },
                hint: 'Enter Player 2 Name',
              ),
              Custom_button(
                text: 'Start Game',
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return GameView(
                          player1Name: Player1controller.text,
                          player2Name: Player2controller.text,
                        );
                      },
                    ));
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
