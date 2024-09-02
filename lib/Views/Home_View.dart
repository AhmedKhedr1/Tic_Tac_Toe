import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tic_tac_toe/Views/Game_view.dart';
import 'package:tic_tac_toe/Widgets/Custom_Button.dart';
import 'package:tic_tac_toe/Widgets/Custom_TextField.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<FormState>formkey=GlobalKey<FormState>();
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
      body:  Form(
        key: formkey,
        child: Padding(
          padding:const  EdgeInsets.symmetric(horizontal: 16),
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
              valdiator: (value) {
                if(value==null || value.isEmpty){
                  return 'Please Enter Name';
                }
                else{
                  return null;
                }
              },
                hint: 'Enter Player 1 Name',
              ),
               Custom_TextField(
                valdiator:(value) {
                if(value==null || value.isEmpty){
                  return 'Please Enter Name';
                }
                else{
                  return null;
                }
              }, 
                hint: 'Enter Player 2 Name',
              ),
              GestureDetector(
                onTap: () {
                  if (formkey.currentState!.validate()){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                     return const GameView();
                   },));
                  }
                },
                child:const Custom_button())
            ],
          ),
        ),
      ),
    );
  }
}
