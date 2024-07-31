// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistrationBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signUpWithCredentials,
    required TResult Function(String phone) signUpWithPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signUpWithCredentials,
    TResult? Function(String phone)? signUpWithPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signUpWithCredentials,
    TResult Function(String phone)? signUpWithPhone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistrationBlocEventSignUpWithCredentials value)
        signUpWithCredentials,
    required TResult Function(_RegistrationBlocEventSignUpWithPhone value)
        signUpWithPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistrationBlocEventSignUpWithCredentials value)?
        signUpWithCredentials,
    TResult? Function(_RegistrationBlocEventSignUpWithPhone value)?
        signUpWithPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistrationBlocEventSignUpWithCredentials value)?
        signUpWithCredentials,
    TResult Function(_RegistrationBlocEventSignUpWithPhone value)?
        signUpWithPhone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationBlocEventCopyWith<$Res> {
  factory $RegistrationBlocEventCopyWith(RegistrationBlocEvent value,
          $Res Function(RegistrationBlocEvent) then) =
      _$RegistrationBlocEventCopyWithImpl<$Res, RegistrationBlocEvent>;
}

/// @nodoc
class _$RegistrationBlocEventCopyWithImpl<$Res,
        $Val extends RegistrationBlocEvent>
    implements $RegistrationBlocEventCopyWith<$Res> {
  _$RegistrationBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegistrationBlocEventSignUpWithCredentialsImplCopyWith<$Res> {
  factory _$$RegistrationBlocEventSignUpWithCredentialsImplCopyWith(
          _$RegistrationBlocEventSignUpWithCredentialsImpl value,
          $Res Function(_$RegistrationBlocEventSignUpWithCredentialsImpl)
              then) =
      __$$RegistrationBlocEventSignUpWithCredentialsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$RegistrationBlocEventSignUpWithCredentialsImplCopyWithImpl<$Res>
    extends _$RegistrationBlocEventCopyWithImpl<$Res,
        _$RegistrationBlocEventSignUpWithCredentialsImpl>
    implements _$$RegistrationBlocEventSignUpWithCredentialsImplCopyWith<$Res> {
  __$$RegistrationBlocEventSignUpWithCredentialsImplCopyWithImpl(
      _$RegistrationBlocEventSignUpWithCredentialsImpl _value,
      $Res Function(_$RegistrationBlocEventSignUpWithCredentialsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$RegistrationBlocEventSignUpWithCredentialsImpl(
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

class _$RegistrationBlocEventSignUpWithCredentialsImpl
    implements _RegistrationBlocEventSignUpWithCredentials {
  const _$RegistrationBlocEventSignUpWithCredentialsImpl(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RegistrationBlocEvent.signUpWithCredentials(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationBlocEventSignUpWithCredentialsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationBlocEventSignUpWithCredentialsImplCopyWith<
          _$RegistrationBlocEventSignUpWithCredentialsImpl>
      get copyWith =>
          __$$RegistrationBlocEventSignUpWithCredentialsImplCopyWithImpl<
                  _$RegistrationBlocEventSignUpWithCredentialsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signUpWithCredentials,
    required TResult Function(String phone) signUpWithPhone,
  }) {
    return signUpWithCredentials(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signUpWithCredentials,
    TResult? Function(String phone)? signUpWithPhone,
  }) {
    return signUpWithCredentials?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signUpWithCredentials,
    TResult Function(String phone)? signUpWithPhone,
    required TResult orElse(),
  }) {
    if (signUpWithCredentials != null) {
      return signUpWithCredentials(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistrationBlocEventSignUpWithCredentials value)
        signUpWithCredentials,
    required TResult Function(_RegistrationBlocEventSignUpWithPhone value)
        signUpWithPhone,
  }) {
    return signUpWithCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistrationBlocEventSignUpWithCredentials value)?
        signUpWithCredentials,
    TResult? Function(_RegistrationBlocEventSignUpWithPhone value)?
        signUpWithPhone,
  }) {
    return signUpWithCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistrationBlocEventSignUpWithCredentials value)?
        signUpWithCredentials,
    TResult Function(_RegistrationBlocEventSignUpWithPhone value)?
        signUpWithPhone,
    required TResult orElse(),
  }) {
    if (signUpWithCredentials != null) {
      return signUpWithCredentials(this);
    }
    return orElse();
  }
}

abstract class _RegistrationBlocEventSignUpWithCredentials
    implements RegistrationBlocEvent {
  const factory _RegistrationBlocEventSignUpWithCredentials(
          {required final String email, required final String password}) =
      _$RegistrationBlocEventSignUpWithCredentialsImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$RegistrationBlocEventSignUpWithCredentialsImplCopyWith<
          _$RegistrationBlocEventSignUpWithCredentialsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegistrationBlocEventSignUpWithPhoneImplCopyWith<$Res> {
  factory _$$RegistrationBlocEventSignUpWithPhoneImplCopyWith(
          _$RegistrationBlocEventSignUpWithPhoneImpl value,
          $Res Function(_$RegistrationBlocEventSignUpWithPhoneImpl) then) =
      __$$RegistrationBlocEventSignUpWithPhoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$RegistrationBlocEventSignUpWithPhoneImplCopyWithImpl<$Res>
    extends _$RegistrationBlocEventCopyWithImpl<$Res,
        _$RegistrationBlocEventSignUpWithPhoneImpl>
    implements _$$RegistrationBlocEventSignUpWithPhoneImplCopyWith<$Res> {
  __$$RegistrationBlocEventSignUpWithPhoneImplCopyWithImpl(
      _$RegistrationBlocEventSignUpWithPhoneImpl _value,
      $Res Function(_$RegistrationBlocEventSignUpWithPhoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$RegistrationBlocEventSignUpWithPhoneImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistrationBlocEventSignUpWithPhoneImpl
    implements _RegistrationBlocEventSignUpWithPhone {
  const _$RegistrationBlocEventSignUpWithPhoneImpl({required this.phone});

  @override
  final String phone;

  @override
  String toString() {
    return 'RegistrationBlocEvent.signUpWithPhone(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationBlocEventSignUpWithPhoneImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationBlocEventSignUpWithPhoneImplCopyWith<
          _$RegistrationBlocEventSignUpWithPhoneImpl>
      get copyWith => __$$RegistrationBlocEventSignUpWithPhoneImplCopyWithImpl<
          _$RegistrationBlocEventSignUpWithPhoneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signUpWithCredentials,
    required TResult Function(String phone) signUpWithPhone,
  }) {
    return signUpWithPhone(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signUpWithCredentials,
    TResult? Function(String phone)? signUpWithPhone,
  }) {
    return signUpWithPhone?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signUpWithCredentials,
    TResult Function(String phone)? signUpWithPhone,
    required TResult orElse(),
  }) {
    if (signUpWithPhone != null) {
      return signUpWithPhone(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistrationBlocEventSignUpWithCredentials value)
        signUpWithCredentials,
    required TResult Function(_RegistrationBlocEventSignUpWithPhone value)
        signUpWithPhone,
  }) {
    return signUpWithPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistrationBlocEventSignUpWithCredentials value)?
        signUpWithCredentials,
    TResult? Function(_RegistrationBlocEventSignUpWithPhone value)?
        signUpWithPhone,
  }) {
    return signUpWithPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistrationBlocEventSignUpWithCredentials value)?
        signUpWithCredentials,
    TResult Function(_RegistrationBlocEventSignUpWithPhone value)?
        signUpWithPhone,
    required TResult orElse(),
  }) {
    if (signUpWithPhone != null) {
      return signUpWithPhone(this);
    }
    return orElse();
  }
}

abstract class _RegistrationBlocEventSignUpWithPhone
    implements RegistrationBlocEvent {
  const factory _RegistrationBlocEventSignUpWithPhone(
          {required final String phone}) =
      _$RegistrationBlocEventSignUpWithPhoneImpl;

  String get phone;
  @JsonKey(ignore: true)
  _$$RegistrationBlocEventSignUpWithPhoneImplCopyWith<
          _$RegistrationBlocEventSignUpWithPhoneImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegistrationBlocSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateToLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistrationBlocSRNavigateToLogin value)
        navigateToLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistrationBlocSRNavigateToLogin value)?
        navigateToLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistrationBlocSRNavigateToLogin value)? navigateToLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationBlocSRCopyWith<$Res> {
  factory $RegistrationBlocSRCopyWith(
          RegistrationBlocSR value, $Res Function(RegistrationBlocSR) then) =
      _$RegistrationBlocSRCopyWithImpl<$Res, RegistrationBlocSR>;
}

/// @nodoc
class _$RegistrationBlocSRCopyWithImpl<$Res, $Val extends RegistrationBlocSR>
    implements $RegistrationBlocSRCopyWith<$Res> {
  _$RegistrationBlocSRCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegistrationBlocSRNavigateToLoginImplCopyWith<$Res> {
  factory _$$RegistrationBlocSRNavigateToLoginImplCopyWith(
          _$RegistrationBlocSRNavigateToLoginImpl value,
          $Res Function(_$RegistrationBlocSRNavigateToLoginImpl) then) =
      __$$RegistrationBlocSRNavigateToLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationBlocSRNavigateToLoginImplCopyWithImpl<$Res>
    extends _$RegistrationBlocSRCopyWithImpl<$Res,
        _$RegistrationBlocSRNavigateToLoginImpl>
    implements _$$RegistrationBlocSRNavigateToLoginImplCopyWith<$Res> {
  __$$RegistrationBlocSRNavigateToLoginImplCopyWithImpl(
      _$RegistrationBlocSRNavigateToLoginImpl _value,
      $Res Function(_$RegistrationBlocSRNavigateToLoginImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegistrationBlocSRNavigateToLoginImpl
    implements _RegistrationBlocSRNavigateToLogin {
  const _$RegistrationBlocSRNavigateToLoginImpl();

  @override
  String toString() {
    return 'RegistrationBlocSR.navigateToLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationBlocSRNavigateToLoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateToLogin,
  }) {
    return navigateToLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? navigateToLogin,
  }) {
    return navigateToLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateToLogin,
    required TResult orElse(),
  }) {
    if (navigateToLogin != null) {
      return navigateToLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistrationBlocSRNavigateToLogin value)
        navigateToLogin,
  }) {
    return navigateToLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistrationBlocSRNavigateToLogin value)?
        navigateToLogin,
  }) {
    return navigateToLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistrationBlocSRNavigateToLogin value)? navigateToLogin,
    required TResult orElse(),
  }) {
    if (navigateToLogin != null) {
      return navigateToLogin(this);
    }
    return orElse();
  }
}

abstract class _RegistrationBlocSRNavigateToLogin
    implements RegistrationBlocSR {
  const factory _RegistrationBlocSRNavigateToLogin() =
      _$RegistrationBlocSRNavigateToLoginImpl;
}

/// @nodoc
mixin _$RegistrationBlocScreenState {}

/// @nodoc
abstract class $RegistrationBlocScreenStateCopyWith<$Res> {
  factory $RegistrationBlocScreenStateCopyWith(
          RegistrationBlocScreenState value,
          $Res Function(RegistrationBlocScreenState) then) =
      _$RegistrationBlocScreenStateCopyWithImpl<$Res,
          RegistrationBlocScreenState>;
}

/// @nodoc
class _$RegistrationBlocScreenStateCopyWithImpl<$Res,
        $Val extends RegistrationBlocScreenState>
    implements $RegistrationBlocScreenStateCopyWith<$Res> {
  _$RegistrationBlocScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegistrationBlocScreenStateImplCopyWith<$Res> {
  factory _$$RegistrationBlocScreenStateImplCopyWith(
          _$RegistrationBlocScreenStateImpl value,
          $Res Function(_$RegistrationBlocScreenStateImpl) then) =
      __$$RegistrationBlocScreenStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationBlocScreenStateImplCopyWithImpl<$Res>
    extends _$RegistrationBlocScreenStateCopyWithImpl<$Res,
        _$RegistrationBlocScreenStateImpl>
    implements _$$RegistrationBlocScreenStateImplCopyWith<$Res> {
  __$$RegistrationBlocScreenStateImplCopyWithImpl(
      _$RegistrationBlocScreenStateImpl _value,
      $Res Function(_$RegistrationBlocScreenStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegistrationBlocScreenStateImpl
    implements _RegistrationBlocScreenState {
  const _$RegistrationBlocScreenStateImpl();

  @override
  String toString() {
    return 'RegistrationBlocScreenState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationBlocScreenStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _RegistrationBlocScreenState
    implements RegistrationBlocScreenState {
  const factory _RegistrationBlocScreenState() =
      _$RegistrationBlocScreenStateImpl;
}
