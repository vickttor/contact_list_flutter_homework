import 'package:contacts/constants.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget header() {
  return AppBar(
    backgroundColor: const Color(primaryColor),
    // Left Menu Icon
    leading: const Icon(
      Icons.menu_rounded,
      color: Color(whiteColor),
    ),
    // Title Centered
    title: Text(
      "Mensagens".toUpperCase(),
    ),
    centerTitle: true,
    titleTextStyle: const TextStyle(
      color: Color(whiteColor),
      fontSize: 18,
      fontFamily: "Inter",
      fontWeight: FontWeight.w300,
      letterSpacing: 3.0,
    ),
    elevation: 0,
    // Right Profile Photo
    actions: [
      Container(
        margin: const EdgeInsets.only(right: 16),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: Image.asset(
            "assets/images/author.png",
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
      )
    ],
  );
}
