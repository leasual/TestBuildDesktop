
import 'dart:io';
import 'dart:ui';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '../network/domain/gateway/all.dart';


enum ErrorType {
  networkError,
  serverError,
}

enum DeviceType {
  group,
  light,
  sensor,
  rule,
  schedule,
}

enum SensorType {
  Daylight,
  ZHALightLevel,
  ZHAHumidity,
  ZHAPresence,
  ZHATemperature,
  ZHASwitch,
  ZHAThermostat,
}

bool isDesktop = (Platform.isWindows || Platform.isMacOS || Platform.isLinux);
bool isWeb = kIsWeb;

// API
String apiPrefix = 'http://';
String hostName = '';
// API apikey
String password = '';
String apikey = '';

//picture
List<String> localPictures = [
'undraw_happy_birthday_re_c16u.svg',
'undraw_stars_re_6je7.svg',
'undraw_synchronize_re_4irq.svg',
'undraw_time_management_re_tk5w.svg',
'undraw_creative_woman_re_u5tk.svg',
'undraw_starlink_3r0a.svg',
'undraw_welcoming_re_x0qo.svg',
'undraw_to_the_moon_re_q21i.svg',
'undraw_drag_re_shc0.svg',
'undraw_eiffel_tower_re_e11r.svg',
'undraw_social_thinking_re_y8cc.svg',
'undraw_speed_test_re_pe1f.svg',
];

IconData getIconBySensorType(String? type) {
  switch (type) {
    case 'ZHAPower':
      return EvaIcons.chargingOutline;
    case 'Daylight':
      return EvaIcons.sunOutline;
    case 'ZHAConsumption':
      return EvaIcons.flashOutline;
    default:
      return EvaIcons.smartphoneOutline;
  }
}

int getItemCount(All? data, DeviceType type) {
  switch (type) {
    case DeviceType.group:
      return data?.groups?.values.length ?? 0;
    case DeviceType.light:
      return data?.lights?.values.length ?? 0;
    case DeviceType.sensor:
      return data?.sensors?.values.length ?? 0;
    case DeviceType.rule:
      return data?.rules?.values.length ?? 0;
    case DeviceType.schedule:
      return data?.schedules?.values.length ?? 0;
  }
}

//Color
const brandColor = Color(0xff3dcd58);
const yellowColor = Color.fromARGB(255, 246, 211, 167);
const yellowInactiveColor = Color.fromARGB(180, 246, 211, 167);
const backgroundColor = Color.fromARGB(255, 250, 250, 250);