// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticationResponse _$AuthenticationResponseFromJson(
    Map<String, dynamic> json) {
  return _AuthenticationhResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationResponse {
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String? get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationResponseCopyWith<AuthenticationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationResponseCopyWith<$Res> {
  factory $AuthenticationResponseCopyWith(AuthenticationResponse value,
          $Res Function(AuthenticationResponse) then) =
      _$AuthenticationResponseCopyWithImpl<$Res, AuthenticationResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'refresh_token') String? refreshToken});
}

/// @nodoc
class _$AuthenticationResponseCopyWithImpl<$Res,
        $Val extends AuthenticationResponse>
    implements $AuthenticationResponseCopyWith<$Res> {
  _$AuthenticationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationhResponseImplCopyWith<$Res>
    implements $AuthenticationResponseCopyWith<$Res> {
  factory _$$AuthenticationhResponseImplCopyWith(
          _$AuthenticationhResponseImpl value,
          $Res Function(_$AuthenticationhResponseImpl) then) =
      __$$AuthenticationhResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'refresh_token') String? refreshToken});
}

/// @nodoc
class __$$AuthenticationhResponseImplCopyWithImpl<$Res>
    extends _$AuthenticationResponseCopyWithImpl<$Res,
        _$AuthenticationhResponseImpl>
    implements _$$AuthenticationhResponseImplCopyWith<$Res> {
  __$$AuthenticationhResponseImplCopyWithImpl(
      _$AuthenticationhResponseImpl _value,
      $Res Function(_$AuthenticationhResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$AuthenticationhResponseImpl(
      freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationhResponseImpl implements _AuthenticationhResponse {
  const _$AuthenticationhResponseImpl(
      @JsonKey(name: 'access_token') this.accessToken,
      @JsonKey(name: 'refresh_token') this.refreshToken);

  factory _$AuthenticationhResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationhResponseImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;

  @override
  String toString() {
    return 'AuthenticationResponse(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationhResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationhResponseImplCopyWith<_$AuthenticationhResponseImpl>
      get copyWith => __$$AuthenticationhResponseImplCopyWithImpl<
          _$AuthenticationhResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationhResponseImplToJson(
      this,
    );
  }
}

abstract class _AuthenticationhResponse implements AuthenticationResponse {
  const factory _AuthenticationhResponse(
          @JsonKey(name: 'access_token') final String? accessToken,
          @JsonKey(name: 'refresh_token') final String? refreshToken) =
      _$AuthenticationhResponseImpl;

  factory _AuthenticationhResponse.fromJson(Map<String, dynamic> json) =
      _$AuthenticationhResponseImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String? get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String? get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationhResponseImplCopyWith<_$AuthenticationhResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
