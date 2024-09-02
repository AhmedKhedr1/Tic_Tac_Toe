
import 'package:flutter/material.dart';

class Custom_TextField extends StatelessWidget {
  const Custom_TextField({
    super.key, required this.hint, this.valdiator,
  });
final String hint;
final String? Function(String?)? valdiator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: TextFormField(
        style: const TextStyle(color: Colors.white,),
        validator:valdiator ,
        decoration: InputDecoration(
        
          hintText:hint ,
          hintStyle:const TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
