import 'package:flutter/material.dart';
import 'package:flutter_json/model/contact.dart';
import 'package:flutter_json/view/utils/save_contact.dart';
import 'package:flutter_json/view/widgets/contact_list.dart';
import 'package:flutter_json/view/widgets/crud_button.dart';
import 'package:flutter_json/view/widgets/input_bar.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  List<Contact> contacts = List.empty(growable: true);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 12,
          ),
          InputBar(
            hintText: "Full Name",
            textInputType: TextInputType.name,
            controller: nameController,
          ),
          InputBar(
            hintText: "Contact",
            textInputType: TextInputType.number,
            controller: contactController,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CrudButton(
                buttonName: "Save",
                onPressed: () {
                  SaveContact(
                          name: nameController.text.trim(),
                          contact: contactController.text.trim(),
                          contacts: contacts)
                      .save();
                  print(contacts.toList().toString());
                },
              ),

              // CrudButton(buttonName: "Update", onPressed: SaveContact.save(),)
            ],
          ),
          contacts.isEmpty
              ? const Text(" No contacts yet")
              : const ContactList(),
        ],
      ),
    );
  }
}
