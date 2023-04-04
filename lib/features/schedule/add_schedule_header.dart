
import 'package:deconz_app/network/domain/group/group.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/custom_input_field.dart';

class AddScheduleHeader extends StatelessWidget {
  const AddScheduleHeader({
    super.key,
    required this.groupFormKey,
    required this.scheduleNameController,
    required this.countController,
    required this.groups,
    // required this.viewModel,
  });

  final GlobalKey<FormState> groupFormKey;
  final TextEditingController scheduleNameController;
  final TextEditingController countController;
  final Map<String, Group> groups;
  // final AddScheduleViewModel viewModel;

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
            child: Form(
                key: groupFormKey,
                child: Column(
                  children: [
                    CustomInputField(
                        action: TextInputAction.next,
                        controller: scheduleNameController,
                        labelText: '',
                        hintText: 'Schedule Name',
                        validator: (textValue) {
                          if (textValue == null ||
                              textValue.isEmpty) {
                            return 'Schedule name is required!';
                          }
                          return null;
                        }),
                    CustomInputField(
                      textInputType: TextInputType.number,
                        action: TextInputAction.done,
                        controller: countController,
                        labelText: '',
                        hintText: 'Count',
                        validator: (textValue) {
                          if (textValue == null ||
                              textValue.isEmpty) {
                            return 'Count is required!';
                          }
                          return null;
                        }),
                  ],
                )),
          )),
    );
  }
}