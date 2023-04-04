import 'package:deconz_app/common_widgets/tabbar/tab_bar_item.dart';
import 'package:flutter/material.dart';

class TabBarInternalItem extends StatelessWidget {
  final double tabBarHeight;
  final double iconSize;

  final TabBarItem item;

  final bool isSelected;
  final Color backgroundColor;
  final Duration animationDuration;
  final Curve animationCurve;

  const TabBarInternalItem(
      {Key? key,
        required this.item,
        required this.isSelected,
        required this.tabBarHeight,
        required this.backgroundColor,
        required this.animationDuration,
        required this.animationCurve,
        required this.iconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: backgroundColor,
        height: double.maxFinite,
        child: Stack(
          clipBehavior: Clip.hardEdge,
          alignment: Alignment.center,
          children: <Widget>[
            AnimatedAlign(
              duration: animationDuration,
              alignment: isSelected ? Alignment.topCenter : Alignment.center,
              child: AnimatedOpacity(
                  opacity: isSelected ? 1.0 : 1.0,
                  duration: animationDuration,
                  child: IconTheme(
                    data: IconThemeData(
                        size: iconSize,
                        color: isSelected
                            ? item.activeColor.withOpacity(1)
                            : item.inactiveColor ?? item.activeColor),
                    child: item.icon,
                  )),
            ),
            AnimatedPositioned(
              curve: animationCurve,
              duration: animationDuration,
              top: isSelected ? -2.0 * iconSize : tabBarHeight / 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: iconSize,
                    height: iconSize,
                  ),
                  CustomPaint(
                    painter: _CustomPath(backgroundColor),
                    child: SizedBox(
                      width: 100,
                      height: iconSize,
                    ),
                  )
                ],
              ),
            ),
            AnimatedAlign(
                alignment:
                isSelected ? Alignment.center : Alignment.bottomCenter,
                duration: animationDuration,
                curve: animationCurve,
                child: AnimatedOpacity(
                    opacity: isSelected ? 1.0 : 0.0,
                    duration: animationDuration,
                    child: DefaultTextStyle.merge(
                      style: TextStyle(
                        color: item.activeColor,
                        fontWeight: FontWeight.bold,
                      ),
                      child: item.title,
                    ))),
            Positioned(
                bottom: 0,
                child: CustomPaint(
                  painter: _CustomPath(backgroundColor),
                  child: SizedBox(
                    width: 100,
                    height: iconSize,
                  ),
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedOpacity(
                  duration: animationDuration,
                  opacity: isSelected ? 1.0 : 0.0,
                  child: Container(
                    width: 5,
                    height: 5,
                    alignment: Alignment.bottomCenter,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: item.activeColor,
                      borderRadius: BorderRadius.circular(2.5),
                    ),
                  )),
            )
          ],
        ));
  }
}

class _CustomPath extends CustomPainter {
  final Color backgroundColor;

  _CustomPath(this.backgroundColor);

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    path.lineTo(0, 0);
    path.lineTo(0, 2.0 * size.height);
    path.lineTo(1.0 * size.width, 2.0 * size.height);
    path.lineTo(1.0 * size.width, 1.0 * size.height);
    path.lineTo(0, 0);
    path.close();

    paint.color = backgroundColor;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}