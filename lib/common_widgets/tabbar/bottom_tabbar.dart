import 'package:deconz_app/common_widgets/tabbar/tab_bar_item.dart';
import 'package:deconz_app/common_widgets/tabbar/tab_internal_item.dart';
import 'package:flutter/material.dart';

class BottomTabBar extends StatelessWidget {
  final int selectedIndex;
  final double height;

  final double iconSize;
  final Color? backgroundColor;
  final bool showElevation;
  final Duration animationDuration;
  final Curve animationCurve;
  final List<BoxShadow> shadows;

  final List<TabBarItem> items;
  final ValueChanged<int> onItemSelected;

  BottomTabBar({
    super.key,
    this.selectedIndex = 0,
    this.height = 60,
    this.showElevation = true,
    this.iconSize = 20,
    this.backgroundColor,
    this.animationDuration = const Duration(milliseconds: 170),
    this.animationCurve = Curves.linear,
    this.shadows = const [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 0.3,
      ),
    ],
    required this.items,
    required this.onItemSelected,
  }) {
    assert(height >= 55 && height <= 100);
    assert(items.length >= 2 && items.length <= 5);
  }

  @override
  Widget build(BuildContext context) {
    final bg = (backgroundColor == null)
        ? Theme.of(context).bottomAppBarColor
        : backgroundColor;

    return Container(
      decoration: BoxDecoration(
        color: bg,
        boxShadow: showElevation ? shadows : [],
      ),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          height: height,
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: items.map((item) {
              var index = items.indexOf(item);
              return Expanded(
                child: GestureDetector(
                  onTap: () => onItemSelected(index),
                  child: TabBarInternalItem(
                    item: item,
                    tabBarHeight: height,
                    iconSize: iconSize,
                    isSelected: index == selectedIndex,
                    backgroundColor: bg!,
                    animationDuration: animationDuration,
                    animationCurve: animationCurve,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
