import 'package:flutter/material.dart';

class TabBarItem {
  final Icon icon;
  final Text title;

  Color activeColor;
  Color inactiveColor;

  TabBarItem({
    required this.icon,
    required this.title,
    this.activeColor = Colors.black,
    this.inactiveColor = Colors.black45,
  }) {}
}