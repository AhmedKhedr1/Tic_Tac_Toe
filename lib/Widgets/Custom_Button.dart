
import 'package:flutter/material.dart';

class Custom_button extends StatelessWidget {
  const Custom_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(15)),
        child: const Center(
          child: Text('Enter Game ',
              style: TextStyle(color: Colors.white, fontSize: 16)),
        ),
      ),
    );
  }
}
