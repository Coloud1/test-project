import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_prj_ivan/data/model/remote/customer_access_token/customer_access_token_create_response.dart';

part 'customer_create_access_token_response.g.dart';

@JsonSerializable()
class CustomerCreateAccessTokenResponse {
  const CustomerCreateAccessTokenResponse(
    this.typename,
    this.customerAccessTokenCreate,
  );

  @JsonKey(name: '__typename')
  final String? typename;
  final CustomerAccessTokenCreateResponse? customerAccessTokenCreate;

  factory CustomerCreateAccessTokenResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CustomerCreateAccessTokenResponseFromJson(json);
}
