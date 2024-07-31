// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_create_access_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerCreateAccessTokenResponse _$CustomerCreateAccessTokenResponseFromJson(
        Map<String, dynamic> json) =>
    CustomerCreateAccessTokenResponse(
      json['__typename'] as String?,
      json['customerAccessTokenCreate'] == null
          ? null
          : CustomerAccessTokenCreateResponse.fromJson(
              json['customerAccessTokenCreate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerCreateAccessTokenResponseToJson(
        CustomerCreateAccessTokenResponse instance) =>
    <String, dynamic>{
      '__typename': instance.typename,
      'customerAccessTokenCreate': instance.customerAccessTokenCreate,
    };
