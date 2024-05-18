import 'package:flutter/material.dart';
import 'package:flutter_json/view/widgets/input_bar.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InputBar(hintText: "Full Name"),
        InputBar(hintText: "Contact"),
      ],
    );
  }
}