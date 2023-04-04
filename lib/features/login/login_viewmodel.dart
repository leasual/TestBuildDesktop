import 'package:deconz_app/constants/constants.dart';
import 'package:deconz_app/features/login/login_repository.dart';
import 'package:deconz_app/network/domain/gateway/gateway.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'login_viewmodel.g.dart';

@riverpod
class LoginViewModel extends _$LoginViewModel {

  final CancelToken cancelToken = CancelToken();

  @override
  FutureOr<dynamic> build() async {
  }

  void cancelTask() {
    cancelToken.cancel();
  }

  Future<void> login(
      String userName, String pwd, String serverIP) async {
    hostName = serverIP;
    password = pwd;
    final repository = ref.read(loginRepositoryProvider);
    // final cancelToken = CancelToken();
    state = const AsyncLoading();
    // does the try/catch for us like previously
    state = await AsyncValue.guard(()=> repository.login(userName, pwd, serverIP, cancelToken));
  }

  Future<List<Gateway>> discoverGateway() {
    // final cancelToken = CancelToken();
    final repository = ref.read(loginRepositoryProvider);
    return repository.discoverGateway(cancelToken);
  }
}

// @riverpod
// LoginViewModel loginViewModel(LoginViewModelRef ref) =>
//     LoginViewModel(repository: ref.watch(loginRepositoryProvider));
