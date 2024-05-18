import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CrudButton extends StatelessWidget {
  String buttonName;
  VoidCallback onPressed;
  CrudButton({required this.buttonName, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(onPressed: onPressed, child: Text(buttonName)),
        const SizedBox(
          width: 12,
        ),
      ],
    );
  }
}
