import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import '../../network/domain/group/group.dart';
import '../../network/domain/light/light.dart';
import '../../constants/constants.dart';
import '../../utils/logger.dart';

class AddScheduleGroup extends StatefulWidget {
  const AddScheduleGroup({Key? key, required this.groups}) : super(key: key);
  final Map<String, Group> groups;

  @override
  State<AddScheduleGroup> createState() => _AddScheduleGroupState();
}

class _AddScheduleGroupState extends State<AddScheduleGroup> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            left: 8, right: 16.0, top: isDesktop ? 16.0 : 0.0, bottom: 16),
        child: Card(
            elevation: isDesktop ? 10 : 0,
            shadowColor: isDesktop ? Colors.black54 : Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(isDesktop ? 30 : 0)),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: !isDesktop,
                  itemBuilder: (context, index) {
                    return CheckboxListTile(
                        visualDensity:
                            const VisualDensity(vertical: 1, horizontal: 1),
                        checkboxShape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        enableFeedback: false,
                        selectedTileColor: Colors.white,
                        checkColor: Colors.white,
                        activeColor: yellowColor,
                        title: Text(
                            '${widget.groups.values.elementAt(index).name}'),
                        secondary: const Icon(EvaIcons.bulbOutline),
                        value: widget.groups.values.elementAt(index).selected ==
                            true,
                        onChanged: (bool? value) {
                          logger.d('selected= $value');
                          setState(() {
                            final light = widget.groups.values
                                .elementAt(index)
                                .copyWith(selected: value);
                            widget.groups[widget.groups.keys.elementAt(index)] =
                                light;
                            widget.groups.forEach((key, value) {
                              if (key != widget.groups.keys.elementAt(index)) {
                                final light = value.copyWith(selected: false);
                                widget.groups[key] = light;
                              }
                            });
                          });
                        });
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.grey[100],
                      height: 1,
                    );
                  },
                  itemCount: widget.groups.length),
            )));
  }
}
