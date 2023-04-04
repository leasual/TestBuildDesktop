import 'package:flutter_riverpod/flutter_riverpod.dart';

class BaseViewModel<R> extends StateNotifier<AsyncValue<dynamic>> {
  BaseViewModel({ required this.repository }) : super(const AsyncData(null));
  late final R repository;
}
