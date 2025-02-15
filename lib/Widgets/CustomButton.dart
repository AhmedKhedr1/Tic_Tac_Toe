// ignore_for_file: must_be_immutable, file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.action,
    required this.ButtonText,
    required this.ButtonColor,
    required this.ButtonHeight,
    required this.Buttonwidth,
    super.key,
  });
  void Function()? action;
  Color ButtonColor;
  String ButtonText;
  double Buttonwidth;
  double ButtonHeight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: ButtonColor,
              textStyle: const TextStyle(fontSize: 18),
              fixedSize:  Size(Buttonwidth, ButtonHeight),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14))),
          onPressed: action,
          child: Text(
            ButtonText,
            style:const TextStyle(fontSize: 20),
          )),
    );
  }
}
