
import 'package:flutter/material.dart';

class Game_Button extends StatelessWidget {
   Game_Button({
    super.key,
  });

  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
            child: Text(
          '',
          style:const TextStyle(color: Colors.white, fontSize: 70),
        )),
      ),
    );
  }
}
