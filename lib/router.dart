import 'package:filledstacked/ui/common/app_routing.dart';
import 'package:filledstacked/ui/views/about_us/about_view.dart';
import 'package:filledstacked/ui/views/home/home_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeViewRoutes:
      return MaterialPageRoute(builder: (context) => HomeView());
    case AboutViewRoutes:
      return MaterialPageRoute(builder: (context) => AboutView());
    default:
      return MaterialPageRoute(builder: (context) => HomeView());
  }
}
