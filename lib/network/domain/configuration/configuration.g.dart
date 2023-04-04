// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Configuration _$$_ConfigurationFromJson(Map<String, dynamic> json) =>
    _$_Configuration(
      apiversion: json['apiversion'] as String?,
      bridgeid: json['bridgeid'] as String?,
      devicename: json['devicename'] as String?,
      dhcp: json['dhcp'] as bool?,
      fwversion: json['fwversion'] as String?,
      gateway: json['gateway'] as String?,
      ipaddress: json['ipaddress'] as String?,
      linkbutton: json['linkbutton'] as bool?,
      localtime: json['localtime'] == null
          ? null
          : DateTime.parse(json['localtime'] as String),
      mac: json['mac'] as String?,
      modelid: json['modelid'] as String?,
      name: json['name'] as String?,
      netmask: json['netmask'] as String?,
      networkopenduration: json['networkopenduration'] as int?,
      ntp: json['ntp'] as String?,
      panid: json['panid'] as int?,
      portalservices: json['portalservices'] as bool?,
      proxyaddress: json['proxyaddress'] as String?,
      proxyport: json['proxyport'] as int?,
      rfconnected: json['rfconnected'] as bool?,
      swupdate: json['swupdate'] == null
          ? null
          : Swupdate.fromJson(json['swupdate'] as Map<String, dynamic>),
      swversion: json['swversion'] as String?,
      timeformat: json['timeformat'] as String?,
      timezone: json['timezone'] as String?,
      utc: json['utc'] == null ? null : DateTime.parse(json['utc'] as String),
      uuid: json['uuid'] as String?,
      websocketnotifyall: json['websocketnotifyall'] as bool?,
      websocketport: json['websocketport'] as int?,
      whitelist: json['whitelist'] == null
          ? null
          : Whitelist.fromJson(json['whitelist'] as Map<String, dynamic>),
      zigbeechannel: json['zigbeechannel'] as int?,
    );

Map<String, dynamic> _$$_ConfigurationToJson(_$_Configuration instance) =>
    <String, dynamic>{
      'apiversion': instance.apiversion,
      'bridgeid': instance.bridgeid,
      'devicename': instance.devicename,
      'dhcp': instance.dhcp,
      'fwversion': instance.fwversion,
      'gateway': instance.gateway,
      'ipaddress': instance.ipaddress,
      'linkbutton': instance.linkbutton,
      'localtime': instance.localtime?.toIso8601String(),
      'mac': instance.mac,
      'modelid': instance.modelid,
      'name': instance.name,
      'netmask': instance.netmask,
      'networkopenduration': instance.networkopenduration,
      'ntp': instance.ntp,
      'panid': instance.panid,
      'portalservices': instance.portalservices,
      'proxyaddress': instance.proxyaddress,
      'proxyport': instance.proxyport,
      'rfconnected': instance.rfconnected,
      'swupdate': instance.swupdate,
      'swversion': instance.swversion,
      'timeformat': instance.timeformat,
      'timezone': instance.timezone,
      'utc': instance.utc?.toIso8601String(),
      'uuid': instance.uuid,
      'websocketnotifyall': instance.websocketnotifyall,
      'websocketport': instance.websocketport,
      'whitelist': instance.whitelist,
      'zigbeechannel': instance.zigbeechannel,
    };

_$_Swupdate _$$_SwupdateFromJson(Map<String, dynamic> json) => _$_Swupdate(
      notify: json['notify'] as bool?,
      text: json['text'] as String?,
      updatestate: json['updatestate'] as int?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_SwupdateToJson(_$_Swupdate instance) =>
    <String, dynamic>{
      'notify': instance.notify,
      'text': instance.text,
      'updatestate': instance.updatestate,
      'url': instance.url,
    };

_$_Whitelist _$$_WhitelistFromJson(Map<String, dynamic> json) => _$_Whitelist();

Map<String, dynamic> _$$_WhitelistToJson(_$_Whitelist instance) =>
    <String, dynamic>{};
