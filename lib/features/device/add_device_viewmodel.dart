import 'package:deconz_app/features/device/add_devices_repository.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'light/light_repository.dart';

part 'add_device_viewmodel.g.dart';

@riverpod
class AddDeviceViewModel extends _$AddDeviceViewModel {
  @override
  FutureOr<dynamic> build() async {
    return null;
  }

  Future<dynamic> searchNewDevice() async {
    final repository = ref.read(addDevicesRepositoryProvider);
    final cancelToken = CancelToken();
    state = await AsyncValue.guard(() => repository.searchNewDevice(cancelToken));
    final lightRepository = ref.read(lightRepositoryProvider);
    state = await AsyncValue.guard(() => lightRepository.getAllLights(cancelToken));
  }
}