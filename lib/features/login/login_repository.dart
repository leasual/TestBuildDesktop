import 'package:deconz_app/base/base_repository.dart';
import 'package:deconz_app/constants/constants.dart';
import 'package:deconz_app/network/dio_extension.dart';
import 'package:deconz_app/network/dio_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../network/domain/gateway/gateway.dart';
import '../../network/domain/gateway/user_name.dart';
import '../../utils/logger.dart';

part 'login_repository.g.dart';

class LoginRepository extends BaseRepository {
  LoginRepository({required super.service});

  Future<dynamic> login(String userName, String password, String serverIP,
      CancelToken? cancelToken) async {
    return service
        .postX('$apiPrefix$hostName/api',
            data: {'devicetype': 'deconz app'}, cancelToken: cancelToken)
        .map((a) => a.fold((l) => throw l,
            (r) => baseResponseFromJson(r)[0].success?.username))
        .run();
  }

  //https://pub.dev/packages/network_info_plus
  //https://github.com/daniel-naegele/upnp.dart
  //https://pub.dev/packages/tcp_scanner
  //1. get self-ip then scan 22 port on the local network, then try to login, can know the gateway ip.
  Future<List<Gateway>> discoverGateway(CancelToken? cancelToken) async {
    return service
        .getX('https://phoscon.de/discover', cancelToken: cancelToken)
        .map((a) => a.fold((l) => throw l, (r) {
              logger.d('gateway= $r');
              return gatewayFromJson(r);
            }))
        .run();
  }
}

@riverpod
LoginRepository loginRepository(LoginRepositoryRef ref) =>
    LoginRepository(service: ref.watch(dioProvider));
