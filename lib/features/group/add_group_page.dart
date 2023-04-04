import 'package:deconz_app/common_widgets/deconz_app_bar.dart';
import 'package:deconz_app/constants/constants.dart';
import 'package:deconz_app/features/group/add_group_device.dart';
import 'package:deconz_app/features/group/add_group_viewmodel.dart';
import 'package:deconz_app/network/domain/light/light.dart';
import 'package:deconz_app/utils/logger.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common_widgets/deconz_error_widget.dart';
import 'add_group_header.dart';

class AddGroupPage extends ConsumerStatefulWidget {
  const AddGroupPage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _AddGroupPageState();
}

class _AddGroupPageState extends ConsumerState<AddGroupPage> {
  final TextEditingController groupNameController = TextEditingController();
  final groupFormKey = GlobalKey<FormState>();
  Map<String, Light> lights = {};

  @override
  void initState() {
    super.initState();
    Future(() => ref.read(addGroupViewModelProvider.notifier).getAllLights());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = ref.read(addGroupViewModelProvider.notifier);
    return ref.watch(addGroupViewModelProvider).when(
        data: (data) {
          logger.d('data= $data lights=$lights');
          if (data is Map<String, Light> && lights.isEmpty) {
            lights = data;
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
              title: 'Add Group',
              actions: [
                IconButton(
                    splashRadius: 25,
                    iconSize: 40,
                    icon: const Icon(
                      EvaIcons.checkmark,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () => {
                          if (groupFormKey.currentState?.validate() == true)
                            {
                              viewModel.addGroup(
                                  groupNameController.text, lights)
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
                            child: AddGroupHeader(
                                groupFormKey: groupFormKey,
                                groupNameController: groupNameController,
                                lights: lights,
                                viewModel: viewModel),
                          ),
                          Expanded(
                              flex: 2,
                              child: AddGroupDevice(
                                lights: lights,
                              ))
                        ],
                      )
                    : CustomScrollView(
                        slivers: [
                          SliverToBoxAdapter(
                              child: AddGroupHeader(
                                  groupFormKey: groupFormKey,
                                  groupNameController: groupNameController,
                                  lights: lights,
                                  viewModel: viewModel)),
                          SliverToBoxAdapter(
                            child: AddGroupDevice(
                              lights: lights,
                            ),
                          )
                        ],
                      )),
          );
        },
        error: (error, stack) =>
            DeconzErrorWidget(onTap: () => viewModel.getAllLights()),
        loading: () => Container());
  }
}
