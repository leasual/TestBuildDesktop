import 'package:deconz_app/common_widgets/tabbar/tab_bar_item.dart';
import 'package:deconz_app/common_widgets/tabbar/tab_internal_item.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class VerticalBottomTabBar extends StatelessWidget {
  final int selectedIndex;
  final double width;

  final double iconSize;
  final Color? backgroundColor;
  final bool showElevation;
  final Duration animationDuration;
  final Curve animationCurve;
  final List<BoxShadow> shadows;

  final List<TabBarItem> items;
  final ValueChanged<int> onItemSelected;

  VerticalBottomTabBar({
    super.key,
    this.selectedIndex = 0,
    this.width = 100,
    this.showElevation = true,
    this.iconSize = 20,
    this.backgroundColor,
    this.animationDuration = const Duration(milliseconds: 170),
    this.animationCurve = Curves.linear,
    this.shadows = const [
      BoxShadow(color: Colors.black12, blurRadius: 0.3, offset: Offset(0, -5)),
    ],
    required this.items,
    required this.onItemSelected,
  }) {
    // assert(height >= 55 && height <= 100);
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 0),
            alignment: Alignment.topCenter,
            child: Image.asset('assets/images/login_top.webp', fit: BoxFit.cover, height: 100,),
          ),
          Center(
            child: Container(
              width: width,
              height: 400,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: items.map((item) {
                  var index = items.indexOf(item);
                  return Expanded(
                    child: GestureDetector(
                      onTap: () => onItemSelected(index),
                      child: TabBarInternalItem(
                        item: item,
                        tabBarHeight: width,
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
          Container(
            padding: const EdgeInsets.only(bottom: 20),
            alignment: Alignment.bottomCenter,
            child: const Text('Ver: 1.0.0'),
          ),
        ],
      ),
    );
  }
}
