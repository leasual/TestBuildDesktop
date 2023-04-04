// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseResponse _$$_BaseResponseFromJson(Map<String, dynamic> json) =>
    _$_BaseResponse(
      success: json['success'] == null
          ? null
          : Success.fromJson(json['success'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BaseResponseToJson(_$_BaseResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
    };

_$_Success _$$_SuccessFromJson(Map<String, dynamic> json) => _$_Success(
      username: json['username'] as String?,
    );

Map<String, dynamic> _$$_SuccessToJson(_$_Success instance) =>
    <String, dynamic>{
      'username': instance.username,
    };
