import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/constants.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    this.on,
    this.icon,
    this.hideMenu = false,
    required this.name,
    required this.index,
    this.showState = true,
    this.onMenuTap,
    this.onOnOffTap,
    this.onCardTap,
  }) : super(key: key);
  final IconData? icon;
  final bool hideMenu;
  final bool? on;
  final String? name;
  final int index;
  final bool showState;
  final VoidCallback? onMenuTap;
  final VoidCallback? onOnOffTap;
  final VoidCallback? onCardTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => (onCardTap == null) ? null : onCardTap!(),
      child: SizedBox(
        width: 179.5,
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 15),
          child: Card(
            elevation: 10,
            shadowColor: Colors.black54,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: Colors.white,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  hideMenu ? const SizedBox(height: 1,) : Row(
                    mainAxisAlignment: showState ? MainAxisAlignment.spaceBetween : MainAxisAlignment.end,
                    children: [
                      IconButton(
                        splashRadius: 25,
                          // icon: const Icon(EvaIcons.moreVerticalOutline),
                          icon: const Icon(EvaIcons.trash2Outline),
                          iconSize: 28,
                          onPressed: () =>
                              (onMenuTap == null) ? null : onMenuTap!()),
                      Visibility(
                        visible: showState,
                        child: IconButton(
                          splashRadius: 30,
                          iconSize: 40,
                          icon:
                            (on == true)
                                ? const Icon(EvaIcons.toggleRightOutline, color: yellowColor,)
                                : const Icon(EvaIcons.toggleLeftOutline),
                          onPressed: () =>
                              (onOnOffTap == null) ? null : onOnOffTap!(),
                        ),
                      )
                    ],
                  ),
                  icon == null ? SvgPicture.asset(
                    'assets/images/${localPictures[index % 12]}',
                    width: 80,
                    height: 70,
                  ) : Icon(icon, size: 60, color: on == true ? yellowColor : Colors.black,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      '$name',
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
