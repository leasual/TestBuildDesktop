import 'package:deconz_app/features/group/group_repository.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../network/domain/group/group.dart';
import '../../utils/logger.dart';

part 'group_viewmodel.g.dart';

@riverpod
class GroupViewModel extends _$GroupViewModel {
  @override
  FutureOr<dynamic> build() async {
    return null;
  }

  Future<void> getGroups() async {
    final repository = ref.read(groupRepositoryProvider);
    final cancelToken = CancelToken();
    // state = const AsyncLoading();
    // does the try/catch for us like previously
    state = await AsyncValue.guard(() => repository.getGroups(cancelToken));
  }

  Future<void> deleteGroup(String id, String name) async {
    final repository = ref.read(groupRepositoryProvider);
    final cancelToken = CancelToken();
    try {
      final result = await repository.deleteGroup(id, cancelToken);
      logger.d('add group= $result id= ${result[0]?['success']['id']}');
      state = AsyncValue.data('Delete group [$name] success.');
      state = await AsyncValue.guard(() => repository.getGroups(cancelToken));
    } catch (err, stack) {
      state = AsyncValue.error(err, stack);
    }
  }

  Future<void> setGroupState(String id, String name, bool onOff) async {
    final repository = ref.read(groupRepositoryProvider);
    final cancelToken = CancelToken();
    try {
      final result = await repository.setGroupState(id: id, on: onOff, cancelToken: cancelToken);
      logger.d('add group= $result id= ${result[0]?['success']['id']}');
      state = AsyncValue.data('Set group [$name] state [${onOff ? 'on' : 'off'}] success');
      state = await AsyncValue.guard(() => repository.getGroups(cancelToken));
    } catch (err, stack) {
      state = AsyncValue.error(err, stack);
    }
  }
}
