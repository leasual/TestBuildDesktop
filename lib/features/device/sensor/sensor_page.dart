import 'package:deconz_app/common_widgets/custom_card.dart';
import 'package:deconz_app/features/device/sensor/sensor_viewmodel.dart';
import 'package:deconz_app/network/domain/sensor/sensor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common_widgets/deconz_error_widget.dart';
import '../../../constants/constants.dart';

class SensorPage extends ConsumerStatefulWidget {
  const SensorPage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _SensorPageState();
}

class _SensorPageState extends ConsumerState<SensorPage> {
  @override
  void initState() {
    super.initState();
    Future(() => ref.read(sensorViewModelProvider.notifier).getAllSensors());
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final viewModel = ref.read(sensorViewModelProvider.notifier);
    return ref.watch(sensorViewModelProvider).when(
        data: (data) => SafeArea(
            child: Scaffold(
                backgroundColor: Colors.white,
                body: RefreshIndicator(
                    color: Colors.white,
                    backgroundColor: yellowColor,
                    onRefresh: () {
                      return viewModel.getAllSensors();
                    },
                    child: CustomScrollView(slivers: [
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
                              showState: false,
                              icon: getIconBySensorType(data?[index].type),
                              index: index,
                              name: '${data?[index].name}',
                            );
                          },
                          childCount: data?.length ?? 0,
                        ),
                      )
                    ])))),
        error: (error, stack) =>
            DeconzErrorWidget(onTap: () => viewModel.getAllSensors()),
        loading: () => Container());
  }
}
