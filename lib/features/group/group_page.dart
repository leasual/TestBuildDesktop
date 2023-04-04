import 'package:deconz_app/common_widgets/deconz_app_bar.dart';
import 'package:deconz_app/common_widgets/custom_card.dart';
import 'package:deconz_app/features/group/group_viewmodel.dart';
import 'package:deconz_app/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';

import '../../common_widgets/deconz_error_widget.dart';
import '../../constants/constants.dart';
import '../../network/domain/group/group.dart';
import '../../utils/logger.dart';

class GroupPage extends ConsumerStatefulWidget {
  const GroupPage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _GroupPageState();
}

class _GroupPageState extends ConsumerState<GroupPage> {
  Map<String, Group> groups = {};
  bool addListener = false;

  void listenRouteChange() {
    logger.d('back result location= ${GoRouter.of(context).location}');
    if (GoRouter.of(context).location.contains(AppRoute.main.name)) {
      Future(
              () => ref.read(groupViewModelProvider.notifier).getGroups());
    }
  }

  @override
  void initState() {
    super.initState();
    Future(() => ref.read(groupViewModelProvider.notifier).getGroups());
  }

  @override
  void dispose() {
    GoRouter.of(context).removeListener(listenRouteChange);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final viewModel = ref.read(groupViewModelProvider.notifier);
    return ref.watch(groupViewModelProvider).when(
        data: (data) {
          logger.d('data= $data');
          if (data is String) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              SmartDialog.showToast(data);
            });
          } else if( data is Map<String, Group>) {
            groups = data;
          }
            return SafeArea(
            bottom: false,
            child: RefreshIndicator(
                color: Colors.white,
                backgroundColor: yellowColor,
                onRefresh: () {
                  return viewModel.getGroups();
                },
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
                        context.goNamed(AppRoute.addGroup.name)
                      },
                    ),
                    body: CustomScrollView(slivers: [
                      SliverGrid(
                        //SliverGridDelegateWithMaxCrossAxisExtent
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: size.width ~/ 180,
                          mainAxisSpacing: 0.0,
                          crossAxisSpacing: 0.0,
                          // width / height: fixed for *all* items
                          childAspectRatio: 0.75,
                        ),
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            return CustomCard(
                              on: groups.values.elementAt(index).action?.on,
                              index: index,
                              name: '${groups.values.elementAt(index).name}',
                              onMenuTap: () => viewModel.deleteGroup(
                                  groups.values.elementAt(index).id ?? '', '${groups.values.elementAt(index).name}'),
                              onOnOffTap: () {
                                viewModel.setGroupState(groups.keys.elementAt(index), '${groups.values.elementAt(index).name}', !(groups.values.elementAt(index).action?.on == true)) ;
                              },
                            );
                          },
                          childCount: groups.length,
                        ),
                      )
                    ])))); 
  },
        error: (error, stack) =>
            DeconzErrorWidget(onTap: () => viewModel.getGroups()),
        loading: () => Container());
  }
}
