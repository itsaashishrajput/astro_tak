import '../constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:astro_tak/screens/profile.dart';
import 'package:astro_tak/screens/homescreen.dart';
import 'package:astro_tak/screens/profile_history.dart';



class NavigationManager {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case rpHomeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case rpProfileHistory:
        return MaterialPageRoute(builder: (context) => const ProfileAndHistory());
      default:
        return MaterialPageRoute(builder: (context) => Container());
    }
  }
}
