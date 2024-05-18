import 'package:flutter/material.dart';
import 'package:flutter_json/view/components/home_page_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Homepage Appbar"), backgroundColor: Colors.amber, centerTitle: true,),
      body: const HomePageBody(),
      );
  }
}