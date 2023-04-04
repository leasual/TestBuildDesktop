import 'package:deconz_app/common_widgets/deconz_app_bar.dart';
import 'package:deconz_app/features/device/light/light_page.dart';
import 'package:deconz_app/features/device/sensor/sensor_page.dart';
import 'package:deconz_app/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class DevicePage extends ConsumerStatefulWidget {
  const DevicePage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _DevicePageState();
}

class _DevicePageState extends ConsumerState<DevicePage>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late TabController _controller;
  //Preserving the state of tabs
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: DeconzAppBar(
        showAddAction: true,
        onTap: () => {
          context.goNamed(AppRoute.addDevice.name)
        },
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TabBar(
                controller: _controller,
                isScrollable: true,
                // indicatorPadding: EdgeInsets.only(left: 10, right: 10),
                indicatorWeight: 0,
                //hover color
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.hovered) || states.contains(MaterialState.focused) ||
                      states.contains(MaterialState.pressed)) {
                    return Colors.transparent;
                  }
                  return null;
                }),
                unselectedLabelColor: Colors.black,
                labelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    // border: Border.all(color: Colors.black, width: 1),
                    color: Colors.black),
                tabs: [
                  Tab(
                    child: Container(
                      alignment: Alignment.center,
                      width: 80,
                      child: const Text(
                        'Light',
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      alignment: Alignment.center,
                      width: 80,
                      child: const Text(
                        'Sensor',
                      ),
                    ),
                  ),
                ])
          ],
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: TabBarView(
          controller: _controller,
          // physics: const BouncingScrollPhysics(),
          children: const [
            LightPage(),
            SensorPage(),
          ],
        ),
      ),
    );
  }
}
