import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InputBar extends StatelessWidget {
  String hintText;
  InputBar({required this.hintText, super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      decoration: InputDecoration(
        hintText: hintText,
        
        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),

      ),
    );
  }
}