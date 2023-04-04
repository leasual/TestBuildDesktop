// To parse this JSON data, do
//
//     final errorResponse = errorResponseFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'error_response.freezed.dart';
part 'error_response.g.dart';

List<ErrorResponse> errorResponseFromMap(String str) => List<ErrorResponse>.from(json.decode(str).map((x) => ErrorResponse.fromJson(x)));

String errorResponseToMap(List<ErrorResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class ErrorResponse with _$ErrorResponse {
  const factory ErrorResponse({
    Error? error,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => _$ErrorResponseFromJson(json);
}

@freezed
class Error with _$Error {
  const factory Error({
    String? type,
    String? address,
    String? description,
  }) = _Error;

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);
}
