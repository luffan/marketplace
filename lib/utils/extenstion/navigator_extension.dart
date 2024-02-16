import 'package:flutter/material.dart';

extension NavigatorExtensionExt on BuildContext {
  NavigatorState get navigator => Navigator.of(this);
}