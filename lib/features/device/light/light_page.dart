import 'package:deconz_app/common_widgets/custom_card.dart';
import 'package:deconz_app/features/device/light/light_viewmodel.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common_widgets/deconz_error_widget.dart';
import '../../../constants/constants.dart';
import '../../../utils/logger.dart';

class LightPage extends ConsumerStatefulWidget {
  const LightPage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _LightPageState();
}

class _LightPageState extends ConsumerState<LightPage> {
  @override
  void initState() {
    super.initState();
    Future(() => ref.read(lightViewModelProvider.notifier).getAllLights());
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final viewModel = ref.read(lightViewModelProvider.notifier);
    return ref.watch(lightViewModelProvider).when(
        data: (data) => SafeArea(
            child: Scaffold(
                backgroundColor: Colors.white,
                body: RefreshIndicator(
                    color: Colors.white,
                    backgroundColor: yellowColor,
                    onRefresh: () {
                      return viewModel.getAllLights();
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
                              icon: EvaIcons.bulbOutline,
                              on: data?.values.toList()[index].state?.on,
                              index: index,
                              name: '${data?.values.toList()[index].name}',
                              onCardTap: () => {logger.d('card tap')},
                              onMenuTap: () => {logger.d('menu tap')},
                              onOnOffTap: () => {
                                logger.d('onOff tap'),
                                viewModel.setLightState('${data?.keys.toList()[index]}',
                                    !(data?.values.toList()[index].state?.on == true))
                              },
                            );
                          },
                          childCount: data?.values.length ?? 0,
                        ),
                      )
                    ])))),
        error: (error, stack) =>
            DeconzErrorWidget(onTap: () => viewModel.getAllLights()),
        loading: () => Container());
  }
}
