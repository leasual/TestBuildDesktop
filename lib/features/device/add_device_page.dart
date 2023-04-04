import 'package:deconz_app/common_widgets/deconz_app_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddDevicePage extends ConsumerStatefulWidget {
  const AddDevicePage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _AddDevicePageState();
}

class _AddDevicePageState extends ConsumerState<AddDevicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeconzAppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: 'Add Device',
        actions: [
          IconButton(
            splashRadius: 25,
            iconSize: 40,
            icon: const Icon(
              EvaIcons.checkmark,
              color: Colors.black,
              size: 30,
            ), onPressed: () => {

          },
          )
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
