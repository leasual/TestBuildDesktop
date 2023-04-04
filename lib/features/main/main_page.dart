import 'package:deconz_app/features/home/home_page.dart';
import 'package:deconz_app/features/schedule/schedule_page.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common_widgets/tabbar/bottom_tabbar.dart';
import '../../common_widgets/tabbar/tab_bar_item.dart';
import '../../common_widgets/tabbar/vertical_bottom_tabbar.dart';
import '../../constants/constants.dart';
import '../device/device_page.dart';
import '../group/group_page.dart';
import '../settings/settings_page.dart';

final tabSelectedIndexProvider = StateProvider.autoDispose<int>((ref) => 1);

class MainPage extends ConsumerStatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  List<Widget> pages = [];
  List<TabBarItem> tabItems = [
    TabBarItem(
      icon: const Icon(EvaIcons.homeOutline),
      title: const Text('Home'),
    ),
    TabBarItem(
      icon: const Icon(EvaIcons.cubeOutline),
      title: const Text('Group'),
    ),
    TabBarItem(
      icon: const Icon(EvaIcons.stopCircleOutline),
      title: const Text('Device'),
    ),
    TabBarItem(
      icon: const Icon(EvaIcons.layersOutline),
      title: const Text('Schedule'),
    ),
    TabBarItem(
      icon: const Icon(EvaIcons.settingsOutline),
      title: const Text('Settings'),
    )
  ];

  @override
  void initState() {
    pages.add(const HomePage());
    pages.add(const GroupPage());
    pages.add(const DevicePage());
    pages.add(const SchedulePage());
    pages.add(const SettingsPage());
    super.initState();
  }

  @override
  void dispose() {
    pages.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final selectIndex = ref.watch(tabSelectedIndexProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          bottom: false,
          child: isDesktop
          /*
           * Fixed avoid init page again when tap tab item.
           * 1. Don't want to preserve any state -> standard BottomBarNavigation.
           * 2. Want to preserve state but fine with creating all the tabs at once -> IndexedStack or Stack and OffStage.
           * 3. Want to preserve state and build tabs only once when clicked on them -> AutomaticKeepAliveClientMixin.
           * 4. IndexedStack is the simplest approach while AutomaticKeepAliveClientMixin covers our need. Since we usually have API calls in tabs and don't want to call them every time we switch to that tab.
           */
              ? Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 100,
                        ),
                        Expanded(child: IndexedStack(index: selectIndex, children: pages,))
                      ],
                    ),
                    SizedBox(
                      width: 100,
                      child: VerticalBottomTabBar(
                        selectedIndex: selectIndex,
                        showElevation: true,
                        onItemSelected: (index) => ref
                            .read(tabSelectedIndexProvider.notifier)
                            .state = index,
                        items: tabItems,
                      ),
                    ),
                  ],
                )
              : IndexedStack(
                  index: selectIndex,
                  children: pages,
                )),
      bottomNavigationBar: isDesktop
          ? null
          : BottomTabBar(
              selectedIndex: selectIndex,
              showElevation: true,
              onItemSelected: (index) =>
                  ref.read(tabSelectedIndexProvider.notifier).state = index,
              items: tabItems,
            ),
    );
  }
}
