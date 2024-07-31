// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_access_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerAccessToken _$CustomerAccessTokenFromJson(Map<String, dynamic> json) =>
    CustomerAccessToken(
      json['accessToken'] as String,
      json['expiresAt'] as String,
    );

Map<String, dynamic> _$CustomerAccessTokenToJson(
        CustomerAccessToken instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'expiresAt': instance.expiresAt,
    };
