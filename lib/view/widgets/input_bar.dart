import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InputBar extends StatelessWidget {
  String hintText;
  TextInputType textInputType;
  TextEditingController controller;
  InputBar({required this.hintText, required this.textInputType, required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(
        controller: controller,
        keyboardType: textInputType,
        decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
      const SizedBox(
        height: 12,
      ),
    ]);
  }
}
