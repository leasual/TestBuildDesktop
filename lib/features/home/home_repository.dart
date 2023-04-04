
import 'package:deconz_app/constants/constants.dart';
import 'package:deconz_app/network/dio_extension.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../base/base_repository.dart';
import '../../network/dio_provider.dart';
import '../../network/domain/gateway/all.dart';

part 'home_repository.g.dart';

class HomeRepository extends BaseRepository {
  HomeRepository({required super.service});

  Future<All> getAll(CancelToken? cancelToken) async {
    return service
        .getX('$apiPrefix$hostName/api/$apikey', cancelToken: cancelToken)
        .map((a) => a.fold((l) => throw l, (r) => All.fromJson(r)))
        .run();
  }
}

@riverpod
HomeRepository homeRepository(HomeRepositoryRef ref) =>
    HomeRepository(service: ref.watch(dioProvider));
