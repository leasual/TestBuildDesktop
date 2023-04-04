// To parse this JSON data, do
//
//     final configuration = configurationFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'configuration.freezed.dart';
part 'configuration.g.dart';

Configuration configurationFromJson(String str) => Configuration.fromJson(json.decode(str));

String configurationToJson(Configuration data) => json.encode(data.toJson());

@freezed
class Configuration with _$Configuration {
  const factory Configuration({
    String? apiversion,
    String? bridgeid,
    String? devicename,
    bool? dhcp,
    String? fwversion,
    String? gateway,
    String? ipaddress,
    bool? linkbutton,
    DateTime? localtime,
    String? mac,
    String? modelid,
    String? name,
    String? netmask,
    int? networkopenduration,
    String? ntp,
    int? panid,
    bool? portalservices,
    String? proxyaddress,
    int? proxyport,
    bool? rfconnected,
    Swupdate? swupdate,
    String? swversion,
    String? timeformat,
    String? timezone,
    DateTime? utc,
    String? uuid,
    bool? websocketnotifyall,
    int? websocketport,
    Whitelist? whitelist,
    int? zigbeechannel,
  }) = _Configuration;

  factory Configuration.fromJson(Map<String, dynamic> json) => _$ConfigurationFromJson(json);
}

@freezed
class Swupdate with _$Swupdate {
  const factory Swupdate({
    bool? notify,
    String? text,
    int? updatestate,
    String? url,
  }) = _Swupdate;

  factory Swupdate.fromJson(Map<String, dynamic> json) => _$SwupdateFromJson(json);
}

@freezed
class Whitelist with _$Whitelist {
  const factory Whitelist() = _Whitelist;

  factory Whitelist.fromJson(Map<String, dynamic> json) => _$WhitelistFromJson(json);
}
