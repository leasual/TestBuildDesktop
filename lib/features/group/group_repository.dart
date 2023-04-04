import 'dart:ffi';

import 'package:deconz_app/constants/constants.dart';
import 'package:deconz_app/network/dio_extension.dart';
import 'package:deconz_app/network/domain/group/group.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../base/base_repository.dart';
import '../../network/dio_provider.dart';

part 'group_repository.g.dart';

class GroupRepository extends BaseRepository {
  GroupRepository({required super.service});

  Future<Map<String, Group>> getGroups(CancelToken? cancelToken) async {
    return service
        .getX('$apiPrefix$hostName/api/$apikey/groups',
            cancelToken: cancelToken)
        .map((a) =>
            a.fold((l) => throw l, (r) => groupsFromJson(r)))
        .run();
  }

  Future<dynamic> addGroup(String groupName, CancelToken? cancelToken) async {
    return service
        .postX('$apiPrefix$hostName/api/$apikey/groups',
            data: {"name": groupName}, cancelToken: cancelToken)
        .map((a) => a.fold((l) => throw l, (r) => r))
        .run();
  }

  Future<dynamic> deleteGroup(String id, CancelToken? cancelToken) async {
    return service
        .deleteX('$apiPrefix$hostName/api/$apikey/groups/$id', cancelToken: cancelToken)
        .map((a) => a.fold((l) => throw l, (r) => r))
        .run();
  }

  Future<dynamic> getGroupAttributes(
      String id, CancelToken? cancelToken) async {
    return service
        .getX('$apiPrefix$hostName/api/$apikey/groups/$id', cancelToken: cancelToken)
        .map((a) => a.fold((l) => throw l, (r) => r))
        .run();
  }

  Future<dynamic> setGroupAttributes(
      {required String id,
      String? name,
      List<String>? lights,
      bool? hidden,
      List<String>? lightSequence,
      List<dynamic>? multiDeviceIds,
      CancelToken? cancelToken}) async {
    Map<String, dynamic> parameters = {};
    if (name?.isNotEmpty == true) {
      parameters['name'] = name;
    }
    if (lights?.isNotEmpty == true) {
      parameters['lights'] = lights;
    }
    if (hidden != null) {
      parameters['hidden'] = hidden;
    }
    if (lightSequence?.isNotEmpty == true) {
      parameters['lightSequence'] = lightSequence;
    }
    if (multiDeviceIds?.isNotEmpty == true) {
      parameters['mulitDeviceIds'] = multiDeviceIds;
    }
    return service
        .putX('$apiPrefix$hostName/api/$apikey/groups/$id',
            data: parameters, cancelToken: cancelToken)
        .map((a) => a.fold((l) => throw l, (r) => r))
        .run();
  }

  Future<dynamic> setGroupState(
  {required String id,
      bool? toggle,
    bool? on,
      int? bri,
      int? hue,
      int? sat,
      int? ct,
      Array? xy,
      String? alert,
      String? effect,
      int? colorLoopSpeed,
      int? transitionTime,
      CancelToken? cancelToken}) async {
    Map<String, dynamic> parameters = {};
    if (toggle != null) {
      parameters['toggle'] = toggle;
    }
    if (on != null) {
      parameters['on'] = on;
    }
    if (bri != null) {
      parameters['bri'] = bri;
    }
    if (hue != null) {
      parameters['hue'] = hue;
    }
    if (sat != null) {
      parameters['sat'] = sat;
    }
    if (ct != null) {
      parameters['ct'] = ct;
    }
    if (xy != null) {
      parameters['xy'] = xy;
    }
    if (alert != null) {
      parameters['alert'] = alert;
    }
    if (effect != null) {
      parameters['effect'] = effect;
    }
    if (colorLoopSpeed != null) {
      parameters['colorloopspeed'] = colorLoopSpeed;
    }
    if (transitionTime != null) {
      parameters['transitiontime'] = transitionTime;
    }
    return service
        .putX('$apiPrefix$hostName/api/$apikey/groups/$id/action',
            data: parameters, cancelToken: cancelToken)
        .map((a) => a.fold((l) => throw l, (r) => r))
        .run();
  }
}

@riverpod
GroupRepository groupRepository(GroupRepositoryRef ref) =>
    GroupRepository(service: ref.watch(dioProvider));
