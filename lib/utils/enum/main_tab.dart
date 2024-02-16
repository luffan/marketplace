import 'package:flutter/material.dart';
import 'package:marketplace/utils/extenstion/build_extension.dart';

enum MainTab {
  home,
  health,
  fitness,
  orders,
}

extension MainTabExt on MainTab {
  IconData get icon {
    switch (this) {
      case MainTab.home:
        return Icons.home;
      case MainTab.health:
        return Icons.health_and_safety;
      case MainTab.fitness:
        return Icons.fitness_center;
      case MainTab.orders:
        return Icons.shopping_basket;
    }
  }

  String label(BuildContext context) {
    switch (this) {
      case MainTab.home:
        return context.localization.home;
      case MainTab.health:
        return context.localization.health;
      case MainTab.fitness:
        return context.localization.fitness;
      case MainTab.orders:
        return context.localization.orders;
    }
  }
}
