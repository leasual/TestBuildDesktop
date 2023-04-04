// To parse this JSON data, do
//
//     final response = responseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_name.freezed.dart';
part 'user_name.g.dart';

//no need to use json.decode to parse data again
List<BaseResponse> baseResponseFromJson(dynamic data) => List<BaseResponse>.from(data.map((x) => BaseResponse.fromJson(x)));

String baseResponseToJson(List<BaseResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class BaseResponse with _$BaseResponse {
  const factory BaseResponse({
    Success? success,
  }) = _BaseResponse;

  factory BaseResponse.fromJson(Map<String, dynamic> json) => _$BaseResponseFromJson(json);
}

@freezed
class Success with _$Success {
  const factory Success({
    String? username,
  }) = _Success;

  factory Success.fromJson(Map<String, dynamic> json) => _$SuccessFromJson(json);
}
