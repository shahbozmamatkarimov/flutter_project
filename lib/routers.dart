import 'package:flutter/widgets.dart';
import 'package:it_languages/screens/bottom_navbar.dart';
import 'package:it_languages/screens/home_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  InitScreen.routeName: (context) => const InitScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
};
