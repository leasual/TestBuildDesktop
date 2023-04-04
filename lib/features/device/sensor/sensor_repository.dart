import 'package:deconz_app/constants/constants.dart';
import 'package:deconz_app/network/dio_extension.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../base/base_repository.dart';
import '../../../network/dio_provider.dart';
import '../../../network/domain/sensor/sensor.dart';

part 'sensor_repository.g.dart';

class SensorRepository extends BaseRepository {
  SensorRepository({required super.service});

  Future<List<Sensor>> getAllSensors(CancelToken? cancelToken) async {
    return service
        .getX('$apiPrefix$hostName/api/$apikey/sensors',
        cancelToken: cancelToken)
        .map((a) =>
        a.fold((l) => throw l, (r) => sensorsFromJson(r).values.toList()))
        .run();
  }

  Future<dynamic> getSensor(
      String id, CancelToken? cancelToken) async {
    return service
        .getX('$apiPrefix$hostName/api/$apikey/sensors/$id',
        cancelToken: cancelToken)
        .map((a) => a.fold((l) => throw l, (r) => r))
        .run();
  }

  Future<dynamic> addSensor(
      String id, String? name, String? modelid, String? swversion, String? type, String? uniqueid, String? manufacturername,
      Object? state, Object? config, CancelToken? cancelToken) async {
    Map<String, dynamic> parameters = {};
    if (name != null) {
      parameters['name'] = name;
    }
    if (modelid != null) {
      parameters['modelid'] = modelid;
    }
    if (swversion != null) {
      parameters['swversion'] = swversion;
    }
    if (type != null) {
      parameters['type'] = type;
    }
    if (uniqueid != null) {
      parameters['effect'] = uniqueid;
    }
    if (state != null) {
      parameters['manufacturername'] = manufacturername;
    }
    if (manufacturername != null) {
      parameters['state'] = state;
    }
    if (config != null) {
      parameters['config'] = config;
    }

    return service
        .postX('$apiPrefix$hostName/api/$apikey/sensors',
        data: parameters,
        cancelToken: cancelToken)
        .map((a) => a.fold((l) => throw l, (r) => r))
        .run();
  }
  Future<dynamic> updateSensor(
      String id, String? name, int? mode, CancelToken? cancelToken) async {
    Map<String, dynamic> parameters = {};
    if(name != null) {
      parameters['name'] = name;
    }
    if(mode != null) {
      parameters['mode'] = mode;
    }
    return service
        .putX('$apiPrefix$hostName/api/$apikey/sensors/$id',
        data: parameters,
        cancelToken: cancelToken)
        .map((a) => a.fold((l) => throw l, (r) => r))
        .run();
  }

  Future<dynamic> changeSensorConfig(
      String id, int? battery, bool? on, bool? reachable, CancelToken? cancelToken) async {
    Map<String, dynamic> parameters = {};
    if(battery != null) {
      parameters['name'] = battery;
    }
    if(on != null) {
      parameters['on'] = on;
    }
    if(reachable != null) {
      parameters['reachable'] = reachable;
    }
    return service
        .putX('$apiPrefix$hostName/api/$apikey/sensors/$id/config',
        data: parameters,
        cancelToken: cancelToken)
        .map((a) => a.fold((l) => throw l, (r) => r))
        .run();
  }

  Future<dynamic> changeSensorState(String id, CancelToken? cancelToken) async {
    return service
        .putX('$apiPrefix$hostName/api/$apikey/sensors/$id/state', cancelToken: cancelToken)
        .map((a) => a.fold((l) => throw l, (r) => r))
        .run();
  }

  Future<dynamic> deleteSensor(
      String id, CancelToken? cancelToken) async {
    return service
        .deleteX('$apiPrefix$hostName/api/$apikey/sensors/$id',
        cancelToken: cancelToken)
        .map((a) => a.fold((l) => throw l, (r) => r))
        .run();
  }

}

@riverpod
SensorRepository sensorRepository(SensorRepositoryRef ref) =>
    SensorRepository(service: ref.watch(dioProvider));
