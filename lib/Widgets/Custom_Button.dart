
import 'package:flutter/material.dart';

class Custom_button extends StatelessWidget {
   Custom_button({
    super.key,required this.text,required this.onTap
  });
String text;
void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        width: 150,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(15)),
        child:  Center(
          child: Text(text,
              style: TextStyle(color: Colors.white, fontSize: 16)),
        ),
      ),
    );
  }
}
