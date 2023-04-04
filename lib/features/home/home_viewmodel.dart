import 'package:deconz_app/features/home/home_repository.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../network/domain/gateway/all.dart';

part 'home_viewmodel.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  FutureOr<All?> build() async {
    return null;
  }

  Future<void> getAll() async {
    final repository = ref.read(homeRepositoryProvider);
    final cancelToken = CancelToken();
    // state = const AsyncLoading();
    // does the try/catch for us like previously
    state = await AsyncValue.guard(() => repository.getAll(cancelToken));
  }
}
