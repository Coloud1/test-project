// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_token_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerTokenResponseData _$CustomerTokenResponseDataFromJson(
        Map<String, dynamic> json) =>
    CustomerTokenResponseData(
      json['__typename'] as String,
      CustomerAccessTokenCreateResponse.fromJson(
          json['customerAccessTokenCreate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerTokenResponseDataToJson(
        CustomerTokenResponseData instance) =>
    <String, dynamic>{
      '__typename': instance.typename,
      'customerAccessTokenCreate': instance.customerAccessTokenCreate,
    };
