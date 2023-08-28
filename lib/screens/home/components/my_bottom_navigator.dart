import 'package:contacts/constants.dart';
import 'package:flutter/material.dart';

class MyBottomNavigator extends StatelessWidget {
  const MyBottomNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 22,
      currentIndex: 0,
      selectedFontSize: 12,
      enableFeedback: false,
      selectedItemColor: const Color(blackColor),
      unselectedItemColor: const Color(greyColor),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_outline_rounded),
          label: "Mensagens",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.phone_rounded),
          label: "Chamar",
        ),
        BottomNavigationBarItem(
          icon: IconButton.filled(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(const Color(primaryColor)),
              shadowColor:
                  MaterialStateProperty.all(const Color(secondaryColor)),
              elevation: MaterialStateProperty.all(10),
              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            color: const Color(whiteColor),
            iconSize: 24,
            onPressed: () {},
            icon: const Icon(Icons.add_rounded),
          ),
          label: "Novo",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_rounded),
          label: "Usuários",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Configurações",
        ),
      ],
    );
  }
}
