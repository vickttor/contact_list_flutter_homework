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
    title: const Text(
      "MENSAGENS",
    ),
    centerTitle: true,
    titleTextStyle: const TextStyle(
      color: Color(whiteColor),
      fontSize: 18,
      fontFamily: "ADLaM Display",
    ),
    elevation: 0,
    // Right Profile Photo
    actions: [
      Container(
        margin: EdgeInsets.only(right: 16),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: Image.network(
            "https://github.com/vickttorugo.png",
            width: 32,
            height: 32,
            fit: BoxFit.cover,
          ),
        ),
      )
    ],
  );
}
