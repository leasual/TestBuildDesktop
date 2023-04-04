import 'dart:ffi';

import 'package:deconz_app/constants/constants.dart';
import 'package:deconz_app/network/dio_extension.dart';
import 'package:deconz_app/network/domain/group/group.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../base/base_repository.dart';
import '../../network/dio_provider.dart';

part 'add_devices_repository.g.dart';

class AddDevicesRepository extends BaseRepository {
  AddDevicesRepository({required super.service});

  Future<dynamic> searchNewDevice(CancelToken? cancelToken) async {
    return service
        .getX('$apiPrefix$hostName/api/$apikey/sensors/new',
        cancelToken: cancelToken)
        .map((a) =>
        a.fold((l) => throw l, (r) => r))
        .run();
  }
}

@riverpod
AddDevicesRepository addDevicesRepository(AddDevicesRepositoryRef ref) =>
    AddDevicesRepository(service: ref.watch(dioProvider));