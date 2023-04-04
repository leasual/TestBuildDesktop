import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import '../../network/domain/light/light.dart';
import '../../constants/constants.dart';
import '../../utils/logger.dart';

class AddGroupDevice extends StatefulWidget {
  const AddGroupDevice({Key? key, required this.lights}) : super(key: key);
  final Map<String, Light> lights;

  @override
  State<AddGroupDevice> createState() => _AddGroupDeviceState();
}

class _AddGroupDeviceState extends State<AddGroupDevice> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            left: 8,
            right: 16.0,
            top: isDesktop ? 16.0 : 0.0,
            bottom: 16),
        child: Card(
            elevation: isDesktop ? 10 : 0,
            shadowColor: isDesktop ? Colors.black54 : Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(isDesktop ? 30: 0)),
            color: Colors.white,
            child: Padding(
              padding:
              const EdgeInsets.only(top: 24.0),
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: !isDesktop,
                  itemBuilder: (context, index) {
                    return CheckboxListTile(
                        visualDensity: const VisualDensity(
                            vertical: 1,
                            horizontal: 1),
                        checkboxShape:
                        const RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius
                                .all(Radius
                                .circular(
                                6))),
                        enableFeedback: false,
                        selectedTileColor:
                        Colors.white,
                        checkColor: Colors.white,
                        activeColor: yellowColor,
                        title: Text(
                            '${widget.lights.values.elementAt(index).name}'),
                        secondary: const Icon(
                            EvaIcons.bulbOutline),
                        value: widget.lights.values
                            .elementAt(index)
                            .selected ==
                            true,
                        onChanged: (bool? value) {
                          logger
                              .d('selected= $value');
                          setState(() {
                            final light = widget.lights
                                .values
                                .elementAt(index)
                                .copyWith(
                                selected: value);
                            widget.lights[widget.lights.keys
                                .elementAt(
                                index)] = light;
                          });
                        });
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.grey[100],
                      height: 1,
                    );
                  },
                  itemCount: widget.lights.length),
            )));
  }
}
