import 'package:flutter/material.dart';
import 'package:flutter_json/model/contact.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class SaveContact {
  String name;
  String contact;
  List<Contact> contacts;
  SaveContact(
      {required this.name, required this.contact, required this.contacts});

  save() {
    if (name.isNotEmpty && contact.isNotEmpty) {
      contacts.add(Contact(fullName: name, contactNumber: contact));
    } else if (name.isEmpty || contact.isEmpty) {
      print("enter value before saving!!");
    }
  }
}
