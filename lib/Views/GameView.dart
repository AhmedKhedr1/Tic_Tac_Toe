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
  List<String> board = List.filled(9, ''); // تخزين قيم X و O
  bool gameOver = false;

  void onTileTap(int index) {
    if (board[index].isEmpty && !gameOver) {
      setState(() {
        board[index] = isxturn ? 'X' : 'O';
        isxturn = !isxturn;
      });

      String? winner = checkWinner();
      if (winner != null) {
        showWinnerDialog(winner);
      } else if (!board.contains('')) {
        showWinnerDialog("تعادل");
      }
    }
  }

  String? checkWinner() {
    List<List<int>> winPatterns = [
      [0, 1, 2], // الصفوف
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6], // الأعمدة
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8], // الأقطار
      [2, 4, 6],
    ];

    for (var pattern in winPatterns) {
      if (board[pattern[0]] != '' &&
          board[pattern[0]] == board[pattern[1]] &&
          board[pattern[0]] == board[pattern[2]]) {
        return board[pattern[0]]; // الفائز (X أو O)
      }
    }
    return null; // لا يوجد فائز
  }

  void showWinnerDialog(String winner) {
    setState(() {
      gameOver = true;
    });

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(winner == "تعادل" ? "🎭 تعادل!" : "🎉 الفائز: $winner"),
        actions: [
          TextButton(
            onPressed: () {
              resetGame();
              Navigator.of(context).pop();
            },
            child: Text("إعادة اللعب"),
          ),
        ],
      ),
    );
  }

  void resetGame() {
    setState(() {
      board = List.filled(9, '');
      isxturn = true;
      gameOver = false;
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
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return GameButton(
                    text: board[index], // إرسال قيمة الزر
                    onTap: () => onTileTap(index),
                  );
                },
              ),
            ),
           button_Bar() // زر إعادة التشغيل
          ],
        ),
      ),
    );
  }
}
