import 'package:flutter/material.dart';
import 'package:flutter_json/model/contact.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List<Contact> contacts = List.empty(growable: true);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) => getRow(index),),
    );
  }

  Widget getRow(int index) {
    return ListTile(
      title: Column(
        children: [
          Text(contacts[index].fullName),
          Text(contacts[index].contactNumber)
        ],
      ),
    );
  }
}
