import 'dart:ui';

import 'package:filledstacked/ui/common/app_colors.dart';
import 'package:filledstacked/ui/common/shared_styles.dart';
import 'package:filledstacked/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class GradientCircle extends StatelessWidget {
  const GradientCircle({super.key});

  @override
  Widget build(BuildContext context) {
    final children = [
      horizontalSpaceMedium,
      Padding(
        padding: EdgeInsets.all(32.0),
        child: Container(
          width: 260,
          height: 260,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: Colors.white.withOpacity(0.2),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 20.0,
                spreadRadius: 2.0,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  '"Бичиг баримтыг шуурхай орчуулж өгсөнд баярлалаа."',
                  style: ktsBodyLargeBold.copyWith(color: Colors.white),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),
      ),
      horizontalSpaceMedium,
      Padding(
        padding: EdgeInsets.all(32.0),
        child: Container(
          width: 260,
          height: 260,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: Colors.white.withOpacity(0.2),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 20.0,
                spreadRadius: 2.0,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  '"Бичиг баримтыг шуурхай орчуулж өгсөнд баярлалаа."',
                  style: ktsBodyLargeBold.copyWith(color: Colors.white),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),
      ),
      horizontalSpaceMedium,
      Padding(
        padding: EdgeInsets.all(32.0),
        child: Container(
          width: 260,
          height: 260,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: Colors.white.withOpacity(0.2),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 20.0,
                spreadRadius: 2.0,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  '"Бичиг баримтыг шуурхай орчуулж өгсөнд баярлалаа."',
                  style: ktsBodyLargeBold.copyWith(color: Colors.white),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),
      ),
    ];

    return ScreenTypeLayout.builder(
      desktop: (_) => Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/Circle.png',
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          ),
        ],
      ),
      mobile: (_) => Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/Circle.png',
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}
