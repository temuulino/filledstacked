import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;

    return AdaptiveNavBar(
      screenWidth: sw,
      title: const Text("Adaptive NavBar"),
      navBarItems: [
        NavBarItem(
          text: "Нүүр",
          onTap: () {
            Navigator.pushNamed(context, "routeName");
          },
        ),
        NavBarItem(
          text: "Бидний тухай",
          onTap: () {
            Navigator.pushNamed(context, "routeName");
          },
        ),
        NavBarItem(
          text: "Үнэ ханш",
          onTap: () {
            Navigator.pushNamed(context, "routeName");
          },
        ),
      ],
    );
  }
}
