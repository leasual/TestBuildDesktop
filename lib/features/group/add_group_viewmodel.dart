import 'dart:math';

import 'package:dartz/dartz_unsafe.dart';
import 'package:deconz_app/features/device/light/light_repository.dart';
import 'package:deconz_app/features/group/group_repository.dart';
import 'package:deconz_app/network/domain/light/light.dart';
import 'package:deconz_app/utils/logger.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_group_viewmodel.g.dart';

@riverpod
class AddGroupViewModel extends _$AddGroupViewModel {
  @override
  FutureOr<dynamic> build() async {
    return null;
  }

  Future<void> addGroup(String groupName, Map<String, Light>? lights) async {
    final repository = ref.read(groupRepositoryProvider);
    final cancelToken = CancelToken();
    // state = const AsyncLoading();
    // does the try/catch for us like previously
    // state = await AsyncValue.guard(() => repository.addGroup(groupName, cancelToken));
    try {
      final group = await repository.addGroup(groupName, cancelToken);
      logger.d('add group= $group id= ${group[0]?['success']['id']}');
      if (lights != null &&
          lights.values
              .where((element) => element.selected == true)
              .isNotEmpty) {
        List<String> ids = [];
        lights.forEach((key, value) {
          if (value.selected == true) {
            ids.add(key);
          }
        });
        final result = await repository.setGroupAttributes(
            id: group[0]?['success']['id'],
            lights: ids,
            cancelToken: cancelToken);
        logger.d('set group attributes= $result');
      }
      state = const AsyncValue.data('Add group success');
    } catch (err, stack) {
      state = AsyncValue.error(err, stack);
    }
  }

  Future<void> getAllLights() async {
    final repository = ref.read(lightRepositoryProvider);
    final cancelToken = CancelToken();
    state = await AsyncValue.guard(() => repository.getAllLights(cancelToken));
  }
}
