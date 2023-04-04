import 'package:dio/dio.dart';

class BaseRepository {
  BaseRepository({required this.service});
  final Dio service;

}
