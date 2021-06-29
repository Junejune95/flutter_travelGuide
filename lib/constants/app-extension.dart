import 'package:flutter/material.dart';
import 'package:travelGuidebyFlutter/enum/app_enum.dart';

extension BottonNavMenuExtension on BottomNavMenu {
  //label
  String get menuLabel {
    switch (this) {
      case BottomNavMenu.Home:
        return "Home";
        break;
      case BottomNavMenu.Favourite:
        return "Favourite";
        break;
      case BottomNavMenu.Location:
        return "Location";
        break;
      case BottomNavMenu.Profile:
        return "Profile";
        break;
      default:
        return "";
    }
  }

  IconData get menuIcon {
    switch (this) {
      case BottomNavMenu.Home:
        return Icons.home;
        break;
      case BottomNavMenu.Favourite:
        return Icons.favorite_outline;
        break;
      case BottomNavMenu.Location:
        return Icons.location_on_outlined;
        break;
      case BottomNavMenu.Profile:
        return Icons.person_outline;
        break;
      default:
        return null;
    }
  }
}
