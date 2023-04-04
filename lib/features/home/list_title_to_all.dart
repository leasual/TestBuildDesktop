import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ListTitleToAll extends StatelessWidget {
  const ListTitleToAll({Key? key, required this.title, required this.onTap}) : super(key: key);
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(10),
        color: Colors.white,
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () => onTap(),
              child: Row(
                children: const [
                  Text(
                    'All',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Icon(EvaIcons.chevronRightOutline)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
