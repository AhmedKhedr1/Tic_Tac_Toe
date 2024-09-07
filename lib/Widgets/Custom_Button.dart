
import 'package:flutter/material.dart';

class Custom_button extends StatelessWidget {
   Custom_button({
    super.key,required this.text
  });
String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64),
      child: Container(
        width: double.infinity,
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
