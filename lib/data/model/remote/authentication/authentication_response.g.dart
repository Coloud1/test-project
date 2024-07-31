// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticationhResponseImpl _$$AuthenticationhResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationhResponseImpl(
      json['access_token'] as String?,
      json['refresh_token'] as String?,
    );

Map<String, dynamic> _$$AuthenticationhResponseImplToJson(
        _$AuthenticationhResponseImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
