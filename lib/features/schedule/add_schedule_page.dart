import 'package:deconz_app/common_widgets/deconz_app_bar.dart';
import 'package:deconz_app/constants/constants.dart';
import 'package:deconz_app/features/group/add_group_device.dart';
import 'package:deconz_app/features/group/add_group_viewmodel.dart';
import 'package:deconz_app/features/schedule/add_schedule_group.dart';
import 'package:deconz_app/features/schedule/add_schedule_viewmodel.dart';
import 'package:deconz_app/features/schedule/schedule_viewmodel.dart';
import 'package:deconz_app/network/domain/group/group.dart';
import 'package:deconz_app/network/domain/light/light.dart';
import 'package:deconz_app/utils/logger.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common_widgets/deconz_error_widget.dart';
import 'add_schedule_header.dart';

class AddSchedulePage extends ConsumerStatefulWidget {
  const AddSchedulePage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _AddSchedulePageState();
}

class _AddSchedulePageState extends ConsumerState<AddSchedulePage> {
  final TextEditingController scheduleNameController = TextEditingController();
  final TextEditingController countController = TextEditingController();
  final TextEditingController delayController = TextEditingController();
  final groupFormKey = GlobalKey<FormState>();
  Map<String, Group> groups = {};

  @override
  void initState() {
    super.initState();
    delayController.text = '1';
    Future(
        () => ref.read(addScheduleViewModelProvider.notifier).getAllGroups());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = ref.read(addScheduleViewModelProvider.notifier);
    return ref.watch(addScheduleViewModelProvider).when(
        data: (data) {
          logger.d('data= $data groups=$groups');
          if (data is Map<String, Group> && groups.isEmpty) {
            groups = data;
          } else if (data is String) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              //if using Navigator.pop() will show black screen during back to preview page.
              Navigator.of(context).pop();
            });
            return Container();
          }
          return Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            appBar: DeconzAppBar(
              automaticallyImplyLeading: true,
              centerTitle: true,
              title: 'Add Schedule',
              actions: [
                IconButton(
                    splashRadius: 25,
                    iconSize: 40,
                    icon: const Icon(
                      EvaIcons.checkmark,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {
                      if (groupFormKey.currentState?.validate() == true) {
                        final selectGroup = groups.values
                            .where((element) => element.selected == true)
                            .toList();
                        if (selectGroup.isNotEmpty) {
                          String selectedGroupId = '';
                          groups.forEach((key, value) {
                            if (value.id == selectGroup[0].id) {
                              selectedGroupId = key;
                            }
                          });
                          viewModel.addSchedule(scheduleNameController.text,
                              countController.text, selectedGroupId, delayController.text);
                        }
                      }
                    })
              ],
            ),
            body: SafeArea(
                bottom: false,
                child: isDesktop
                    ? Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: AddScheduleHeader(
                                groupFormKey: groupFormKey,
                                scheduleNameController: scheduleNameController,
                                delayController: delayController,
                                countController: countController,
                                groups: groups),
                          ),
                          Expanded(
                              flex: 2,
                              child: AddScheduleGroup(
                                groups: groups,
                              ))
                        ],
                      )
                    : CustomScrollView(
                        slivers: [
                          SliverToBoxAdapter(
                              child: AddScheduleHeader(
                                  groupFormKey: groupFormKey,
                                  scheduleNameController:
                                      scheduleNameController,
                                  delayController: delayController,
                                  countController: countController,
                                  groups: groups)),
                          SliverToBoxAdapter(
                            child: AddScheduleGroup(
                              groups: groups,
                            ),
                          )
                        ],
                      )),
          );
        },
        error: (error, stack) =>
            DeconzErrorWidget(onTap: () => viewModel.getAllGroups()),
        loading: () => Container());
  }
}
