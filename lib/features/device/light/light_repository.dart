import 'dart:ffi';

import 'package:deconz_app/constants/constants.dart';
import 'package:deconz_app/network/dio_extension.dart';
import 'package:deconz_app/network/domain/light/light.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../base/base_repository.dart';
import '../../../network/dio_provider.dart';

part 'light_repository.g.dart';

class LightRepository extends BaseRepository {
  LightRepository({required super.service});

  Future<Map<String, Light>?> getAllLights(CancelToken? cancelToken) async {
    return service
        .getX('$apiPrefix$hostName/api/$apikey/lights',
            cancelToken: cancelToken)
        .map((a) =>
            a.fold((l) => throw l, (r) => lightFromJson(r)))
        .run();
  }

  Future<dynamic> getLightState(String id, CancelToken? cancelToken) async {
    return service
        .getX('$apiPrefix$hostName/api/$apikey/lights/$id',
            cancelToken: cancelToken)
        .map((a) => a.fold((l) => throw l, (r) => r))
        .run();
  }

  Future<dynamic> setLightState(
      {required String id,
      String? alert,
      int? bri,
      int? colorloopspeed,
      int? ct,
      String? effect,
      int? hue,
      bool? on,
      int? sat,
      int? transitiontime,
      Array<Int>? xy,
      bool? open,
      bool? stop,
      int? lift,
      int? tilt,
      CancelToken? cancelToken}) async {
    Map<String, dynamic> parameters = {};
    if (alert != null) {
      parameters['alert'] = alert;
    }
    if (bri != null) {
      parameters['bri'] = bri;
    }
    if (colorloopspeed != null) {
      parameters['colorloopspeed'] = colorloopspeed;
    }
    if (ct != null) {
      parameters['ct'] = ct;
    }
    if (effect != null) {
      parameters['effect'] = effect;
    }
    if (hue != null) {
      parameters['hue'] = hue;
    }
    if (on != null) {
      parameters['on'] = on;
    }
    if (sat != null) {
      parameters['sat'] = sat;
    }
    if (transitiontime != null) {
      parameters['transitiontime'] = transitiontime;
    }
    if (xy != null) {
      parameters['xy'] = xy;
    }
    if (open != null) {
      parameters['open'] = open;
    }
    if (stop != null) {
      parameters['stop'] = stop;
    }
    if (lift != null) {
      parameters['stop'] = lift;
    }
    if (tilt != null) {
      parameters['tilt'] = tilt;
    }
    return service
        .putX('$apiPrefix$hostName/api/$apikey/lights/$id/state',
            data: parameters, cancelToken: cancelToken)
        .map((a) => a.fold((l) => throw l, (r) => r))
        .run();
  }

  Future<dynamic> deleteLight(String id, CancelToken? cancelToken) async {
    return service
        .deleteX('$apiPrefix$hostName/api/$apikey/lights/$id',
            cancelToken: cancelToken)
        .map((a) => a.fold((l) => throw l, (r) => r))
        .run();
  }

  Future<dynamic> removeFromAllGroups(
      String id, CancelToken? cancelToken) async {
    return service
        .deleteX('$apiPrefix$hostName/api/$apikey/lights/$id/groups',
            cancelToken: cancelToken)
        .map((a) => a.fold((l) => throw l, (r) => r))
        .run();
  }

  Future<dynamic> removeFromAllScene(
      String id, CancelToken? cancelToken) async {
    return service
        .deleteX('$apiPrefix$hostName/api/lights/$id/scenes',
            cancelToken: cancelToken)
        .map((a) => a.fold((l) => throw l, (r) => r))
        .run();
  }
}

@riverpod
LightRepository lightRepository(LightRepositoryRef ref) =>
    LightRepository(service: ref.watch(dioProvider));
