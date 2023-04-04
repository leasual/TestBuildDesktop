import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../network/domain/gateway/all.dart';
import 'custom_card.dart';

class HorizontalCardList extends StatelessWidget {
  const HorizontalCardList(
      {Key? key,
      required this.type,
      this.all,
      this.hideMenu = false,
      this.onOnOffTap,
      this.onMenuTap,
      this.onCardTap})
      : super(key: key);
  final All? all;
  final bool hideMenu;
  final DeviceType type;
  final VoidCallback? onMenuTap;

  // final Function(String, bool)? onOnOffTap;
  final VoidCallback? onOnOffTap;
  final VoidCallback? onCardTap;

  @override
  Widget build(BuildContext context) {
    final itemCount = getItemCount(all, type);
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 0, bottom: 10),
        child: SizedBox(
          height: itemCount == 0 ? 0 : 245.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: getItemCount(all, type),
              itemBuilder: (context, index) {
                switch (type) {
                  case DeviceType.group:
                    final group = all?.groups?.values.elementAt(index);
                    // final id = all?.groups?.keys.elementAt(index);
                    return CustomCard(
                      hideMenu: hideMenu,
                      on: group?.action?.on,
                      name: group?.name,
                      index: index,
                      onOnOffTap: () => {},
                      onMenuTap: () => {},
                      onCardTap: () => {},
                    );
                  case DeviceType.light:
                    final light = all?.lights?.values.elementAt(index);
                    return CustomCard(
                      hideMenu: hideMenu,
                      icon: EvaIcons.bulbOutline,
                      on: light?.state?.on,
                      name: light?.name,
                      index: index,
                      onOnOffTap: () => {},
                      onMenuTap: () => {},
                      onCardTap: () => {},
                    );
                  case DeviceType.sensor:
                    final sensor = all?.sensors?.values.elementAt(index);
                    return CustomCard(
                      hideMenu: hideMenu,
                      icon: getIconBySensorType(sensor?.type),
                      showState: false,
                      name: sensor?.name,
                      index: index,
                      onOnOffTap: () => {},
                      onMenuTap: () => {},
                      onCardTap: () => {},
                    );
                  case DeviceType.rule:
                    final rule = all?.rules?.values.elementAt(index);
                    return CustomCard(
                      hideMenu: hideMenu,
                      showState: false,
                      name: rule?.name,
                      index: index,
                      onOnOffTap: () => {},
                      onMenuTap: () => {},
                      onCardTap: () => {},
                    );
                  case DeviceType.schedule:
                    final schedule = all?.schedules?.values.elementAt(index);
                    return CustomCard(
                      hideMenu: hideMenu,
                      showState: false,
                      name: schedule?.name,
                      index: index,
                      onOnOffTap: () => {},
                      onMenuTap: () => {},
                      onCardTap: () => {},
                    );
                }
              }),
        ),
      ),
    );
  }
}
