
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import '../../common_widgets/custom_input_field.dart';
import '../../constants/constants.dart';
import '../../network/domain/light/light.dart';
import 'add_group_viewmodel.dart';

class AddGroupHeader extends StatelessWidget {
  const AddGroupHeader({
    super.key,
    required this.groupFormKey,
    required this.groupNameController,
    required this.lights,
    required this.viewModel,
  });

  final GlobalKey<FormState> groupFormKey;
  final TextEditingController groupNameController;
  final Map<String, Light> lights;
  final AddGroupViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
          elevation: 0,
          shadowColor: Colors.black54,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Column(children: [
              Form(
                  key: groupFormKey,
                  child: CustomInputField(
                      action: TextInputAction.done,
                      controller: groupNameController,
                      labelText: '',
                      hintText: 'Group Name',
                      validator: (textValue) {
                        if (textValue == null ||
                            textValue.isEmpty) {
                          return 'Group name is required!';
                        }
                        return null;
                      })),
              //This widget requires a Material widget ancestor in the tree to paint itself on, which is typically provided by the app's Scaffold.
              // The tileColor, selectedTileColor, focusColor, and hoverColor are not painted by the ListTile itself but by the Material widget ancestor.
              // In this case, one can wrap a Material widget around the ListTile
              //hover color should add InkWell to active
              Visibility(
                visible: isDesktop,
                child: Material(
                  color: Colors.white,
                  child: InkWell(
                    onTap: () => {
                      if (lights.isEmpty)
                        {viewModel.getAllLights()}
                    },
                    child: const ListTile(
                      visualDensity: VisualDensity(
                          horizontal: 1, vertical: 1),
                      leading: Icon(
                        EvaIcons.bulbOutline,
                        color: Colors.black,
                      ),
                      title: Text('Light'),
                      trailing: Icon(EvaIcons
                          .arrowIosForwardOutline),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0),
                child: Divider(
                  color: Colors.grey[100],
                  height: 1,
                ),
              ),
            ]),
          )),
    );
  }
}