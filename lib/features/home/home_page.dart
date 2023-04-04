import 'package:deconz_app/common_widgets/deconz_error_widget.dart';
import 'package:deconz_app/common_widgets/horizontal_card_list.dart';
import 'package:deconz_app/constants/constants.dart';
import 'package:deconz_app/features/home/home_viewmodel.dart';
import 'package:deconz_app/features/home/list_title_to_all.dart';
import 'package:deconz_app/features/main/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_header.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late AnimationController _animationController;
  late Animation<double> _animation;
  bool isExpand = true;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController = ScrollController()
      ..addListener(() {
        bool currentState = _scrollController.offset < 40;
        if (isExpand != currentState) {
          isExpand = currentState;
          isExpand
              ? _animationController.reverse()
              : _animationController.forward();
        }
        if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) {
          setState(() {});
        }
      });
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 350));
    final curve =
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn);
    _animation = Tween(begin: 0.0, end: 1.0).animate(curve)
      ..addListener(() {
        setState(() {});
      });
    //get data when open page
    Future(() => ref.read(homeViewModelProvider.notifier).getAll());
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = ref.read(homeViewModelProvider.notifier);
    // final lightViewModel = ref.read(lightViewModelProvider.notifier);
    return ref.watch(homeViewModelProvider).when(
        data: (data) => SafeArea(
                child: Scaffold(
              backgroundColor: Colors.white,
              body: RefreshIndicator(
                color: Colors.white,
                backgroundColor: yellowColor,
                onRefresh: () {
                  return viewModel.getAll();
                },
                child: Stack(
                  children: [
                    CustomScrollView(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      controller: _scrollController,
                      slivers: [
                        HomeHeader(name: '${data?.config?.name}'),
                        ListTitleToAll(
                            title:
                                'Group (${getItemCount(data, DeviceType.group)})',
                            onTap: () => {
                                  ref
                                      .read(tabSelectedIndexProvider.notifier)
                                      .state = 1
                                }),
                        HorizontalCardList(
                          all: data,
                          type: DeviceType.group,
                          hideMenu: true,
                        ),
                        ListTitleToAll(
                            title:
                                'Light (${getItemCount(data, DeviceType.light)})',
                            onTap: () => {
                                  ref
                                      .read(tabSelectedIndexProvider.notifier)
                                      .state = 2
                                }),
                        HorizontalCardList(
                          all: data,
                          type: DeviceType.light,
                          hideMenu: true,
                        ),
                        ListTitleToAll(
                            title:
                                'Sensor (${getItemCount(data, DeviceType.sensor)})',
                            onTap: () => {
                                  ref
                                      .read(tabSelectedIndexProvider.notifier)
                                      .state = 2
                                }),
                        HorizontalCardList(
                          all: data,
                          type: DeviceType.sensor,
                          hideMenu: true,
                        ),
                        ListTitleToAll(
                            title:
                                'Rules (${getItemCount(data, DeviceType.rule)})',
                            onTap: () => {
                                  ref
                                      .read(tabSelectedIndexProvider.notifier)
                                      .state = 3
                                }),
                        HorizontalCardList(
                          all: data,
                          type: DeviceType.rule,
                          hideMenu: true,
                        ),
                        ListTitleToAll(
                            title:
                                'Schedule (${getItemCount(data, DeviceType.schedule)})',
                            onTap: () => {
                                  ref
                                      .read(tabSelectedIndexProvider.notifier)
                                      .state = 3
                                }),
                        HorizontalCardList(
                          all: data,
                          type: DeviceType.schedule,
                          hideMenu: true,
                        ),
                      ],
                    ),
                    Positioned(
                      //it must define left and right to 0.0, then it can scroll
                      left: 0.0,
                      right: 0.0,
                      top: _animation.value * 60.3 - 60.3,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 60,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text(
                                'Hi ${data?.config?.name}',
                                style: const TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Divider(
                            height: 0.3,
                            color: isExpand ? Colors.white : Colors.black12,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )),
        error: (error, stack) =>
            DeconzErrorWidget(onTap: () => viewModel.getAll()),
        loading: () => Container());
  }
}
