// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Views/GameView.dart';
import 'package:tic_tac_toe/Widgets/CustomButton.dart';
import 'package:tic_tac_toe/Widgets/CustomTextField.dart';

class Homeviewbody extends StatefulWidget {
  const Homeviewbody({super.key});

  @override
  State<Homeviewbody> createState() => _HomeviewbodyState();
}

class _HomeviewbodyState extends State<Homeviewbody> {
  @override
  Widget build(BuildContext context) {
    TextEditingController? Player1Name = TextEditingController();
    TextEditingController? Player2Name = TextEditingController();
    final formkey = GlobalKey<FormState>();

    return Form(
      key: formkey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter Players Name',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            CustomTextField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please enter player name';
                }
              },
              hint: ' Player 1 Name ',
              controller: Player1Name,
            ),
            CustomTextField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please enter player name';
                }
              },
              hint: ' Player 2 Name ',
              controller: Player2Name,
            ),
            CustomButton(ButtonHeight: 50,
            Buttonwidth: 200,
              ButtonColor: Colors.green,
              ButtonText: 'Start Game',
              action: () {
                if (formkey.currentState!.validate()) {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Gameview(
                        Player1Name: Player1Name.text,
                        Player2Name: Player2Name.text,
                      );
                    },
                  ));
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
