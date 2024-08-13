import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_provider_data.freezed.dart';

@freezed
class UserProviderData with _$UserProviderData {
  const factory UserProviderData({
    required UserProviderDataId providerId,
    required String uid,
  }) = _UserProviderData;
}

enum UserProviderDataId {
  password,
  phone,
  unknown;

  static UserProviderDataId fromRawString(String rawValue) {
    return UserProviderDataId.values.firstWhere(
      (e) => e.name.toLowerCase() == rawValue.toLowerCase(),
      orElse: () => UserProviderDataId.unknown,
    );
  }
}
