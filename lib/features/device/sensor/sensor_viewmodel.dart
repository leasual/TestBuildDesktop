import 'package:deconz_app/features/device/sensor/sensor_repository.dart';
import 'package:deconz_app/network/domain/sensor/sensor.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sensor_viewmodel.g.dart';

@riverpod
class SensorViewModel extends _$SensorViewModel {
  @override
  FutureOr<List<Sensor>?> build() async {
    return null;
  }

  Future<void> getAllSensors() async {
    final repository = ref.read(sensorRepositoryProvider);
    final cancelToken = CancelToken();
    // state = const AsyncLoading();
    // does the try/catch for us like previously
    state = await AsyncValue.guard(() => repository.getAllSensors(cancelToken));
  }


}
