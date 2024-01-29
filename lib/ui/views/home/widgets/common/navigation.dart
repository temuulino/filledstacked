import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:filledstacked/ui/common/app_routing.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;

    return AdaptiveNavBar(
      screenWidth: sw,
      title: const Text("Баталгаат орчуулга"),
      navBarItems: [
        NavBarItem(
          text: "Нүүр",
          onTap: () {
            Navigator.pushNamed(context, HomeViewRoutes);
          },
        ),
        NavBarItem(
          text: "Бидний тухай",
          onTap: () {
            Navigator.pushNamed(context, AboutViewRoutes);
          },
        ),
      ],
    );
  }
}
