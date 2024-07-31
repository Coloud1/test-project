// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_user_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerUserErrorResponse _$CustomerUserErrorResponseFromJson(
        Map<String, dynamic> json) =>
    CustomerUserErrorResponse(
      json['code'] as String?,
      (json['field'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      json['message'] as String?,
    );

Map<String, dynamic> _$CustomerUserErrorResponseToJson(
        CustomerUserErrorResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'field': instance.field,
      'message': instance.message,
    };
