// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticationRequest _$AuthenticationRequestFromJson(
    Map<String, dynamic> json) {
  return _AuthenticationRequest.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationRequest {
  @JsonKey(name: 'input')
  AuthenticationRequestData get input => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationRequestCopyWith<AuthenticationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationRequestCopyWith<$Res> {
  factory $AuthenticationRequestCopyWith(AuthenticationRequest value,
          $Res Function(AuthenticationRequest) then) =
      _$AuthenticationRequestCopyWithImpl<$Res, AuthenticationRequest>;
  @useResult
  $Res call({@JsonKey(name: 'input') AuthenticationRequestData input});

  $AuthenticationRequestDataCopyWith<$Res> get input;
}

/// @nodoc
class _$AuthenticationRequestCopyWithImpl<$Res,
        $Val extends AuthenticationRequest>
    implements $AuthenticationRequestCopyWith<$Res> {
  _$AuthenticationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_value.copyWith(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as AuthenticationRequestData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthenticationRequestDataCopyWith<$Res> get input {
    return $AuthenticationRequestDataCopyWith<$Res>(_value.input, (value) {
      return _then(_value.copyWith(input: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthenticationRequestImplCopyWith<$Res>
    implements $AuthenticationRequestCopyWith<$Res> {
  factory _$$AuthenticationRequestImplCopyWith(
          _$AuthenticationRequestImpl value,
          $Res Function(_$AuthenticationRequestImpl) then) =
      __$$AuthenticationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'input') AuthenticationRequestData input});

  @override
  $AuthenticationRequestDataCopyWith<$Res> get input;
}

/// @nodoc
class __$$AuthenticationRequestImplCopyWithImpl<$Res>
    extends _$AuthenticationRequestCopyWithImpl<$Res,
        _$AuthenticationRequestImpl>
    implements _$$AuthenticationRequestImplCopyWith<$Res> {
  __$$AuthenticationRequestImplCopyWithImpl(_$AuthenticationRequestImpl _value,
      $Res Function(_$AuthenticationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$AuthenticationRequestImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as AuthenticationRequestData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationRequestImpl implements _AuthenticationRequest {
  const _$AuthenticationRequestImpl(
      {@JsonKey(name: 'input') required this.input});

  factory _$AuthenticationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationRequestImplFromJson(json);

  @override
  @JsonKey(name: 'input')
  final AuthenticationRequestData input;

  @override
  String toString() {
    return 'AuthenticationRequest(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationRequestImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationRequestImplCopyWith<_$AuthenticationRequestImpl>
      get copyWith => __$$AuthenticationRequestImplCopyWithImpl<
          _$AuthenticationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationRequestImplToJson(
      this,
    );
  }
}

abstract class _AuthenticationRequest implements AuthenticationRequest {
  const factory _AuthenticationRequest(
          {@JsonKey(name: 'input')
          required final AuthenticationRequestData input}) =
      _$AuthenticationRequestImpl;

  factory _AuthenticationRequest.fromJson(Map<String, dynamic> json) =
      _$AuthenticationRequestImpl.fromJson;

  @override
  @JsonKey(name: 'input')
  AuthenticationRequestData get input;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationRequestImplCopyWith<_$AuthenticationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AuthenticationRequestData _$AuthenticationRequestDataFromJson(
    Map<String, dynamic> json) {
  return _AuthenticationRequestData.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationRequestData {
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationRequestDataCopyWith<AuthenticationRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationRequestDataCopyWith<$Res> {
  factory $AuthenticationRequestDataCopyWith(AuthenticationRequestData value,
          $Res Function(AuthenticationRequestData) then) =
      _$AuthenticationRequestDataCopyWithImpl<$Res, AuthenticationRequestData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class _$AuthenticationRequestDataCopyWithImpl<$Res,
        $Val extends AuthenticationRequestData>
    implements $AuthenticationRequestDataCopyWith<$Res> {
  _$AuthenticationRequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationRequestDataImplCopyWith<$Res>
    implements $AuthenticationRequestDataCopyWith<$Res> {
  factory _$$AuthenticationRequestDataImplCopyWith(
          _$AuthenticationRequestDataImpl value,
          $Res Function(_$AuthenticationRequestDataImpl) then) =
      __$$AuthenticationRequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$$AuthenticationRequestDataImplCopyWithImpl<$Res>
    extends _$AuthenticationRequestDataCopyWithImpl<$Res,
        _$AuthenticationRequestDataImpl>
    implements _$$AuthenticationRequestDataImplCopyWith<$Res> {
  __$$AuthenticationRequestDataImplCopyWithImpl(
      _$AuthenticationRequestDataImpl _value,
      $Res Function(_$AuthenticationRequestDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthenticationRequestDataImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationRequestDataImpl implements _AuthenticationRequestData {
  const _$AuthenticationRequestDataImpl(
      {@JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'password') required this.password});

  factory _$AuthenticationRequestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationRequestDataImplFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'password')
  final String password;

  @override
  String toString() {
    return 'AuthenticationRequestData(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationRequestDataImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationRequestDataImplCopyWith<_$AuthenticationRequestDataImpl>
      get copyWith => __$$AuthenticationRequestDataImplCopyWithImpl<
          _$AuthenticationRequestDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationRequestDataImplToJson(
      this,
    );
  }
}

abstract class _AuthenticationRequestData implements AuthenticationRequestData {
  const factory _AuthenticationRequestData(
          {@JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'password') required final String password}) =
      _$AuthenticationRequestDataImpl;

  factory _AuthenticationRequestData.fromJson(Map<String, dynamic> json) =
      _$AuthenticationRequestDataImpl.fromJson;

  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'password')
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationRequestDataImplCopyWith<_$AuthenticationRequestDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
