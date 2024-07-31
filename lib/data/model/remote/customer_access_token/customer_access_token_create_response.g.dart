// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_access_token_create_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerAccessTokenCreateResponse _$CustomerAccessTokenCreateResponseFromJson(
        Map<String, dynamic> json) =>
    CustomerAccessTokenCreateResponse(
      json['__typename'] as String?,
      json['customerAccessToken'] == null
          ? null
          : CustomerAccessToken.fromJson(
              json['customerAccessToken'] as Map<String, dynamic>),
      (json['customerUserErrors'] as List<dynamic>?)
          ?.map((e) =>
              CustomerUserErrorResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CustomerAccessTokenCreateResponseToJson(
        CustomerAccessTokenCreateResponse instance) =>
    <String, dynamic>{
      '__typename': instance.typename,
      'customerAccessToken': instance.customerAccessToken,
      'customerUserErrors': instance.customerUserErrors,
    };
