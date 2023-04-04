import 'package:deconz_app/features/device/light/light_repository.dart';
import 'package:deconz_app/network/domain/light/light.dart';
import 'package:deconz_app/utils/logger.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'light_viewmodel.g.dart';

@riverpod
class LightViewModel extends _$LightViewModel {
  @override
  FutureOr<Map<String, Light>?> build() async {
    return null;
  }

  Future<void> getAllLights() async {
    final repository = ref.read(lightRepositoryProvider);
    final cancelToken = CancelToken();
    // state = const AsyncLoading();
    // does the try/catch for us like previously
    state = await AsyncValue.guard(() => repository.getAllLights(cancelToken));
  }

  Future<void> setLightState(String id, bool on) async {
    final repository = ref.read(lightRepositoryProvider);
    final cancelToken = CancelToken();
    // state = const AsyncLoading();
    // does the try/catch for us like previously
    final result = await repository.setLightState(id: id, on: on, cancelToken: cancelToken);
    logger.d('set light state result= $result');
    state = await AsyncValue.guard(() => repository.getAllLights(cancelToken));
  }

}
