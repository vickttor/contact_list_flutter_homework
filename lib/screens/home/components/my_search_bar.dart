import 'package:flutter/material.dart';
import 'package:contacts/constants.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 8,
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
      child: const Column(
        children: [
          Row(
            children: [
              Text(
                "Feito por:",
                style: TextStyle(
                  fontFamily: "ADLaM Display",
                  fontSize: 14,
                  color: Color(whiteColor),
                ),
              ),
              SizedBox(width: 12),
              Text(
                "Victor Hugo da Silva",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Color(whiteColor),
                ),
              ),
              Spacer(),
              Text(
                "RA:",
                style: TextStyle(
                  fontFamily: "ADLaM Display",
                  fontSize: 14,
                  color: Color(whiteColor),
                ),
              ),
              SizedBox(width: 12),
              Text(
                "1431432312001",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(whiteColor),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          TextField(
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
              fillColor: Color(secondaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
