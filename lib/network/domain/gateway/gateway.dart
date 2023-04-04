import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'gateway.freezed.dart';
part 'gateway.g.dart';

List<Gateway> gatewayFromJson(dynamic data) => List<Gateway>.from(data.map((x) => Gateway.fromJson(x)));

String gatewayToJson(List<Gateway> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


@freezed
class Gateway with _$Gateway {
  factory Gateway({
    required String id,
    required String internalipaddress,
    required String macaddress,
    required String name
}) = _Gateway;

  factory Gateway.fromJson(Map<String, dynamic> json) => _$GatewayFromJson(json);
}