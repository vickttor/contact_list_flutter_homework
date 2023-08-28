import "package:contacts/constants.dart";
import "package:contacts/screens/home/components/header.dart";
import "package:contacts/screens/home/components/navigator.dart";
import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(),
      backgroundColor: const Color(whiteColor),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 24,
              right: 16,
              left: 16,
              bottom: 36,
            ),
            decoration: const BoxDecoration(
              color: Color(primaryColor),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 4.0,
                  blurRadius: 10.0,
                  color: Color(secondaryColor),
                )
              ],
            ),
            child: const TextField(
              autocorrect: true,
              keyboardType: TextInputType.text,
              cursorColor: Color(primaryColor),
              style: TextStyle(
                color: Color(whiteColor),
              ),
              decoration: InputDecoration(
                alignLabelWithHint: true,
                labelStyle: TextStyle(color: Color(whiteColor)),
                floatingLabelStyle: TextStyle(color: Color(whiteColor)),
                prefixIcon: Icon(
                  Icons.search_rounded,
                  semanticLabel: "Search Icon",
                ),
                prefixIconColor: Color(whiteColor),
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.all(12),
                hintText: "Search",
                hintStyle: TextStyle(color: Color.fromARGB(154, 246, 251, 254)),
                fillColor: Color(
                  secondaryColor,
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const MyBottomNavigator(),
    );
  }
}
