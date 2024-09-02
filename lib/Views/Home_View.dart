import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tic_tac_toe/Widgets/Custom_TextField.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
      body: Padding(
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
            const Custom_TextField(
              hint: 'Enter Player 1 Name',
            ),
            const Custom_TextField(
              hint: 'Enter Player 2 Name',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration:  BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: Text('Enter Game ',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
