import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Widgets/HomeViewBody.dart';
import 'package:tic_tac_toe/constant.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: KBackgroundColor,
      body: Homeviewbody(),
    );
  }
}