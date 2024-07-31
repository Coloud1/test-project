// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticationRequestImpl _$$AuthenticationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationRequestImpl(
      input: AuthenticationRequestData.fromJson(
          json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthenticationRequestImplToJson(
        _$AuthenticationRequestImpl instance) =>
    <String, dynamic>{
      'input': instance.input,
    };

_$AuthenticationRequestDataImpl _$$AuthenticationRequestDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationRequestDataImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$AuthenticationRequestDataImplToJson(
        _$AuthenticationRequestDataImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
