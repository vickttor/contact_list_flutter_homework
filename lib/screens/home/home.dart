import "package:contacts/constants.dart";
import 'package:contacts/mock/contacts.dart';
import 'package:contacts/screens/home/components/contact_card.dart';
import 'package:contacts/screens/home/components/my_header.dart';
import 'package:contacts/screens/home/components/my_bottom_navigator.dart';
import 'package:contacts/screens/home/components/my_search_bar.dart';
import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myHeader(),
      backgroundColor: const Color(whiteColor),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MySearchBar(),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: contacts
                    .map((contact) => ContactCard(contact: contact))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigator(),
    );
  }
}
