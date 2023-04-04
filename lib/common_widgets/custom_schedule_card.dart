import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../constants/constants.dart';

class CustomScheduleCard extends StatelessWidget {
  const CustomScheduleCard({
    Key? key,
    this.start,
    required this.name,
    required this.index,
    required this.progress,
    required this.total,
    this.onStartTap,
    this.onDeleteTap,
    this.onCardTap,
  }) : super(key: key);
  final bool? start;
  final String? name;
  final int index;
  final double progress;
  final double total;
  final VoidCallback? onStartTap;
  final VoidCallback? onDeleteTap;
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        splashRadius: 25,
                          // icon: const Icon(EvaIcons.moreVerticalOutline),
                          icon: const Icon(EvaIcons.trash2Outline),
                          iconSize: 28,
                          onPressed: () =>
                              (onDeleteTap == null) ? null : onDeleteTap!()),
                      IconButton(
                          disabledColor: Colors.grey[500],
                          splashRadius: 25,
                          icon: start == true ? const Icon(EvaIcons.pauseCircleOutline, color: yellowColor) : const Icon(EvaIcons.playCircleOutline),
                          iconSize: 28,
                          onPressed: (onStartTap == null || progress == total) ? null : () => onStartTap!()),

                    ],
                  ),
                  CircularPercentIndicator(
                    radius: 50.0,
                    lineWidth: 15.0,
                    percent: progress / total,
                    center: Text("${progress.toInt()}/${total.toInt()}"),
                    progressColor: yellowColor,
                    backgroundColor: Colors.grey[200]!,
                  ),
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
