import 'package:deconz_app/common_widgets/custom_schedule_card.dart';
import 'package:deconz_app/features/schedule/schedule_viewmodel.dart';
import 'package:deconz_app/utils/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';

import '../../common_widgets/deconz_app_bar.dart';
import '../../common_widgets/deconz_error_widget.dart';
import '../../constants/constants.dart';
import '../../network/domain/schedule/task.dart';
import '../../routing/app_router.dart';
import '../../utils/logger.dart';

class SchedulePage extends ConsumerStatefulWidget {
  const SchedulePage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _SchedulePageState();
}

class _SchedulePageState extends ConsumerState<SchedulePage> {
  Map<String, Task> taskList = {};
  bool addListener = false;

  void listenRouteChange() {
    logger.d('back result location= ${GoRouter.of(context).location}');
    if (GoRouter.of(context).location.contains(AppRoute.main.name)) {
      Future(
          () => ref.read(scheduleViewModelProvider.notifier).getAllSchedules());
    }
  }

  @override
  void initState() {
    super.initState();
    Future(
        () => ref.read(scheduleViewModelProvider.notifier).getAllSchedules());
  }

  @override
  void dispose() {
    GoRouter.of(context).removeListener(listenRouteChange);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final viewModel = ref.read(scheduleViewModelProvider.notifier);
    return ref.watch(scheduleViewModelProvider).when(
        data: (data) {
          if (data != null && data is Map<String, Task>) {
            taskList = data;
          }
          if (data is String) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              SmartDialog.showToast(data);
            });
          }
          logger.d('data= $taskList');
          return SafeArea(
              child: Scaffold(
                  backgroundColor: Colors.white,
                  appBar: DeconzAppBar(
                    showAddAction: true,
                    onTap: () => {
                      if (!addListener)
                        {
                          GoRouter.of(context).addListener(listenRouteChange),
                          addListener = true
                        },
                      context.goNamed(AppRoute.addSchedule.name),
                    },
                  ),
                  body: RefreshIndicator(
                      color: Colors.white,
                      backgroundColor: yellowColor,
                      onRefresh: () {
                        return viewModel.getAllSchedules();
                      },
                      child: CustomScrollView(slivers: [
                        SliverGrid(
                          //SliverGridDelegateWithMaxCrossAxisExtent
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: size.width ~/ 180,
                            mainAxisSpacing: 0.0,
                            crossAxisSpacing: 0.0,
                            // width / height: fixed for *all* items
                            childAspectRatio: 0.75,
                          ),
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              return CustomScheduleCard(
                                start: taskList.values.elementAt(index).start,
                                index: index,
                                progress: taskList.values
                                        .elementAt(index)
                                        .progress
                                        ?.toDouble() ??
                                    0,
                                total: taskList.values
                                        .elementAt(index)
                                        .total
                                        ?.toDouble() ??
                                    0,
                                name:
                                    '${taskList.values.elementAt(index).name}',
                                onCardTap: () => {logger.d('card tap')},
                                onDeleteTap: () => viewModel.deleteSchedule(
                                    taskList.keys.elementAt(index)),
                                onStartTap: () => {
                                  logger.d('start tap'),
                                  setState(() {
                                    final currentTask =
                                        taskList.values.elementAt(index);
                                    if (currentTask.start == false) {
                                      for (var element in taskList.values) {
                                        if (element.taskId !=
                                            currentTask.taskId) {
                                          final task =
                                              element.copyWith(start: false);
                                          taskList[task.taskId!] = task;
                                        } else {
                                          final task =
                                              element.copyWith(start: true);
                                          taskList[task.taskId!] = task;
                                        }
                                      }
                                    } else {
                                      for (var element in taskList.values) {
                                        if (element.taskId ==
                                            currentTask.taskId) {
                                          final task =
                                              element.copyWith(start: false);
                                          taskList[task.taskId!] = task;
                                          break;
                                        }
                                      }
                                    }
                                    viewModel.startTaskSchedule(taskList, taskList[currentTask.taskId!]);
                                  })
                                },
                              );
                            },
                            childCount: taskList.length,
                          ),
                        )
                      ]))));
        },
        error: (error, stack) =>
            DeconzErrorWidget(onTap: () => viewModel.getAllSchedules()),
        loading: () => Container());
  }
}
