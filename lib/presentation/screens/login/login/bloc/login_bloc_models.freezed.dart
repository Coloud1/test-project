// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) makeLoginWithEmail,
    required TResult Function(String phone, String password) makeLoginWithPhone,
    required TResult Function() makeLoginWithApple,
    required TResult Function() makeLoginWithGoogle,
    required TResult Function() makeLoginWithGithub,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? makeLoginWithEmail,
    TResult? Function(String phone, String password)? makeLoginWithPhone,
    TResult? Function()? makeLoginWithApple,
    TResult? Function()? makeLoginWithGoogle,
    TResult? Function()? makeLoginWithGithub,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? makeLoginWithEmail,
    TResult Function(String phone, String password)? makeLoginWithPhone,
    TResult Function()? makeLoginWithApple,
    TResult Function()? makeLoginWithGoogle,
    TResult Function()? makeLoginWithGithub,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginBlocEventMakeLoginWithEmail value)
        makeLoginWithEmail,
    required TResult Function(_LoginBlocEventMakeLoginWithPhone value)
        makeLoginWithPhone,
    required TResult Function(_LoginBlocEventMakeLoginWithApple value)
        makeLoginWithApple,
    required TResult Function(_LoginBlocEventMakeLoginWithGoogle value)
        makeLoginWithGoogle,
    required TResult Function(_LoginBlocEventMakeLoginWithGithub value)
        makeLoginWithGithub,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginBlocEventMakeLoginWithEmail value)?
        makeLoginWithEmail,
    TResult? Function(_LoginBlocEventMakeLoginWithPhone value)?
        makeLoginWithPhone,
    TResult? Function(_LoginBlocEventMakeLoginWithApple value)?
        makeLoginWithApple,
    TResult? Function(_LoginBlocEventMakeLoginWithGoogle value)?
        makeLoginWithGoogle,
    TResult? Function(_LoginBlocEventMakeLoginWithGithub value)?
        makeLoginWithGithub,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginBlocEventMakeLoginWithEmail value)?
        makeLoginWithEmail,
    TResult Function(_LoginBlocEventMakeLoginWithPhone value)?
        makeLoginWithPhone,
    TResult Function(_LoginBlocEventMakeLoginWithApple value)?
        makeLoginWithApple,
    TResult Function(_LoginBlocEventMakeLoginWithGoogle value)?
        makeLoginWithGoogle,
    TResult Function(_LoginBlocEventMakeLoginWithGithub value)?
        makeLoginWithGithub,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginBlocEventCopyWith<$Res> {
  factory $LoginBlocEventCopyWith(
          LoginBlocEvent value, $Res Function(LoginBlocEvent) then) =
      _$LoginBlocEventCopyWithImpl<$Res, LoginBlocEvent>;
}

/// @nodoc
class _$LoginBlocEventCopyWithImpl<$Res, $Val extends LoginBlocEvent>
    implements $LoginBlocEventCopyWith<$Res> {
  _$LoginBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginBlocEventMakeLoginWithEmailImplCopyWith<$Res> {
  factory _$$LoginBlocEventMakeLoginWithEmailImplCopyWith(
          _$LoginBlocEventMakeLoginWithEmailImpl value,
          $Res Function(_$LoginBlocEventMakeLoginWithEmailImpl) then) =
      __$$LoginBlocEventMakeLoginWithEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginBlocEventMakeLoginWithEmailImplCopyWithImpl<$Res>
    extends _$LoginBlocEventCopyWithImpl<$Res,
        _$LoginBlocEventMakeLoginWithEmailImpl>
    implements _$$LoginBlocEventMakeLoginWithEmailImplCopyWith<$Res> {
  __$$LoginBlocEventMakeLoginWithEmailImplCopyWithImpl(
      _$LoginBlocEventMakeLoginWithEmailImpl _value,
      $Res Function(_$LoginBlocEventMakeLoginWithEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginBlocEventMakeLoginWithEmailImpl(
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

class _$LoginBlocEventMakeLoginWithEmailImpl
    implements _LoginBlocEventMakeLoginWithEmail {
  const _$LoginBlocEventMakeLoginWithEmailImpl(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginBlocEvent.makeLoginWithEmail(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginBlocEventMakeLoginWithEmailImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginBlocEventMakeLoginWithEmailImplCopyWith<
          _$LoginBlocEventMakeLoginWithEmailImpl>
      get copyWith => __$$LoginBlocEventMakeLoginWithEmailImplCopyWithImpl<
          _$LoginBlocEventMakeLoginWithEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) makeLoginWithEmail,
    required TResult Function(String phone, String password) makeLoginWithPhone,
    required TResult Function() makeLoginWithApple,
    required TResult Function() makeLoginWithGoogle,
    required TResult Function() makeLoginWithGithub,
  }) {
    return makeLoginWithEmail(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? makeLoginWithEmail,
    TResult? Function(String phone, String password)? makeLoginWithPhone,
    TResult? Function()? makeLoginWithApple,
    TResult? Function()? makeLoginWithGoogle,
    TResult? Function()? makeLoginWithGithub,
  }) {
    return makeLoginWithEmail?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? makeLoginWithEmail,
    TResult Function(String phone, String password)? makeLoginWithPhone,
    TResult Function()? makeLoginWithApple,
    TResult Function()? makeLoginWithGoogle,
    TResult Function()? makeLoginWithGithub,
    required TResult orElse(),
  }) {
    if (makeLoginWithEmail != null) {
      return makeLoginWithEmail(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginBlocEventMakeLoginWithEmail value)
        makeLoginWithEmail,
    required TResult Function(_LoginBlocEventMakeLoginWithPhone value)
        makeLoginWithPhone,
    required TResult Function(_LoginBlocEventMakeLoginWithApple value)
        makeLoginWithApple,
    required TResult Function(_LoginBlocEventMakeLoginWithGoogle value)
        makeLoginWithGoogle,
    required TResult Function(_LoginBlocEventMakeLoginWithGithub value)
        makeLoginWithGithub,
  }) {
    return makeLoginWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginBlocEventMakeLoginWithEmail value)?
        makeLoginWithEmail,
    TResult? Function(_LoginBlocEventMakeLoginWithPhone value)?
        makeLoginWithPhone,
    TResult? Function(_LoginBlocEventMakeLoginWithApple value)?
        makeLoginWithApple,
    TResult? Function(_LoginBlocEventMakeLoginWithGoogle value)?
        makeLoginWithGoogle,
    TResult? Function(_LoginBlocEventMakeLoginWithGithub value)?
        makeLoginWithGithub,
  }) {
    return makeLoginWithEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginBlocEventMakeLoginWithEmail value)?
        makeLoginWithEmail,
    TResult Function(_LoginBlocEventMakeLoginWithPhone value)?
        makeLoginWithPhone,
    TResult Function(_LoginBlocEventMakeLoginWithApple value)?
        makeLoginWithApple,
    TResult Function(_LoginBlocEventMakeLoginWithGoogle value)?
        makeLoginWithGoogle,
    TResult Function(_LoginBlocEventMakeLoginWithGithub value)?
        makeLoginWithGithub,
    required TResult orElse(),
  }) {
    if (makeLoginWithEmail != null) {
      return makeLoginWithEmail(this);
    }
    return orElse();
  }
}

abstract class _LoginBlocEventMakeLoginWithEmail implements LoginBlocEvent {
  const factory _LoginBlocEventMakeLoginWithEmail(
      {required final String email,
      required final String password}) = _$LoginBlocEventMakeLoginWithEmailImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginBlocEventMakeLoginWithEmailImplCopyWith<
          _$LoginBlocEventMakeLoginWithEmailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginBlocEventMakeLoginWithPhoneImplCopyWith<$Res> {
  factory _$$LoginBlocEventMakeLoginWithPhoneImplCopyWith(
          _$LoginBlocEventMakeLoginWithPhoneImpl value,
          $Res Function(_$LoginBlocEventMakeLoginWithPhoneImpl) then) =
      __$$LoginBlocEventMakeLoginWithPhoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone, String password});
}

/// @nodoc
class __$$LoginBlocEventMakeLoginWithPhoneImplCopyWithImpl<$Res>
    extends _$LoginBlocEventCopyWithImpl<$Res,
        _$LoginBlocEventMakeLoginWithPhoneImpl>
    implements _$$LoginBlocEventMakeLoginWithPhoneImplCopyWith<$Res> {
  __$$LoginBlocEventMakeLoginWithPhoneImplCopyWithImpl(
      _$LoginBlocEventMakeLoginWithPhoneImpl _value,
      $Res Function(_$LoginBlocEventMakeLoginWithPhoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? password = null,
  }) {
    return _then(_$LoginBlocEventMakeLoginWithPhoneImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginBlocEventMakeLoginWithPhoneImpl
    implements _LoginBlocEventMakeLoginWithPhone {
  const _$LoginBlocEventMakeLoginWithPhoneImpl(
      {required this.phone, required this.password});

  @override
  final String phone;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginBlocEvent.makeLoginWithPhone(phone: $phone, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginBlocEventMakeLoginWithPhoneImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginBlocEventMakeLoginWithPhoneImplCopyWith<
          _$LoginBlocEventMakeLoginWithPhoneImpl>
      get copyWith => __$$LoginBlocEventMakeLoginWithPhoneImplCopyWithImpl<
          _$LoginBlocEventMakeLoginWithPhoneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) makeLoginWithEmail,
    required TResult Function(String phone, String password) makeLoginWithPhone,
    required TResult Function() makeLoginWithApple,
    required TResult Function() makeLoginWithGoogle,
    required TResult Function() makeLoginWithGithub,
  }) {
    return makeLoginWithPhone(phone, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? makeLoginWithEmail,
    TResult? Function(String phone, String password)? makeLoginWithPhone,
    TResult? Function()? makeLoginWithApple,
    TResult? Function()? makeLoginWithGoogle,
    TResult? Function()? makeLoginWithGithub,
  }) {
    return makeLoginWithPhone?.call(phone, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? makeLoginWithEmail,
    TResult Function(String phone, String password)? makeLoginWithPhone,
    TResult Function()? makeLoginWithApple,
    TResult Function()? makeLoginWithGoogle,
    TResult Function()? makeLoginWithGithub,
    required TResult orElse(),
  }) {
    if (makeLoginWithPhone != null) {
      return makeLoginWithPhone(phone, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginBlocEventMakeLoginWithEmail value)
        makeLoginWithEmail,
    required TResult Function(_LoginBlocEventMakeLoginWithPhone value)
        makeLoginWithPhone,
    required TResult Function(_LoginBlocEventMakeLoginWithApple value)
        makeLoginWithApple,
    required TResult Function(_LoginBlocEventMakeLoginWithGoogle value)
        makeLoginWithGoogle,
    required TResult Function(_LoginBlocEventMakeLoginWithGithub value)
        makeLoginWithGithub,
  }) {
    return makeLoginWithPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginBlocEventMakeLoginWithEmail value)?
        makeLoginWithEmail,
    TResult? Function(_LoginBlocEventMakeLoginWithPhone value)?
        makeLoginWithPhone,
    TResult? Function(_LoginBlocEventMakeLoginWithApple value)?
        makeLoginWithApple,
    TResult? Function(_LoginBlocEventMakeLoginWithGoogle value)?
        makeLoginWithGoogle,
    TResult? Function(_LoginBlocEventMakeLoginWithGithub value)?
        makeLoginWithGithub,
  }) {
    return makeLoginWithPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginBlocEventMakeLoginWithEmail value)?
        makeLoginWithEmail,
    TResult Function(_LoginBlocEventMakeLoginWithPhone value)?
        makeLoginWithPhone,
    TResult Function(_LoginBlocEventMakeLoginWithApple value)?
        makeLoginWithApple,
    TResult Function(_LoginBlocEventMakeLoginWithGoogle value)?
        makeLoginWithGoogle,
    TResult Function(_LoginBlocEventMakeLoginWithGithub value)?
        makeLoginWithGithub,
    required TResult orElse(),
  }) {
    if (makeLoginWithPhone != null) {
      return makeLoginWithPhone(this);
    }
    return orElse();
  }
}

abstract class _LoginBlocEventMakeLoginWithPhone implements LoginBlocEvent {
  const factory _LoginBlocEventMakeLoginWithPhone(
      {required final String phone,
      required final String password}) = _$LoginBlocEventMakeLoginWithPhoneImpl;

  String get phone;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginBlocEventMakeLoginWithPhoneImplCopyWith<
          _$LoginBlocEventMakeLoginWithPhoneImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginBlocEventMakeLoginWithAppleImplCopyWith<$Res> {
  factory _$$LoginBlocEventMakeLoginWithAppleImplCopyWith(
          _$LoginBlocEventMakeLoginWithAppleImpl value,
          $Res Function(_$LoginBlocEventMakeLoginWithAppleImpl) then) =
      __$$LoginBlocEventMakeLoginWithAppleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginBlocEventMakeLoginWithAppleImplCopyWithImpl<$Res>
    extends _$LoginBlocEventCopyWithImpl<$Res,
        _$LoginBlocEventMakeLoginWithAppleImpl>
    implements _$$LoginBlocEventMakeLoginWithAppleImplCopyWith<$Res> {
  __$$LoginBlocEventMakeLoginWithAppleImplCopyWithImpl(
      _$LoginBlocEventMakeLoginWithAppleImpl _value,
      $Res Function(_$LoginBlocEventMakeLoginWithAppleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginBlocEventMakeLoginWithAppleImpl
    implements _LoginBlocEventMakeLoginWithApple {
  const _$LoginBlocEventMakeLoginWithAppleImpl();

  @override
  String toString() {
    return 'LoginBlocEvent.makeLoginWithApple()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginBlocEventMakeLoginWithAppleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) makeLoginWithEmail,
    required TResult Function(String phone, String password) makeLoginWithPhone,
    required TResult Function() makeLoginWithApple,
    required TResult Function() makeLoginWithGoogle,
    required TResult Function() makeLoginWithGithub,
  }) {
    return makeLoginWithApple();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? makeLoginWithEmail,
    TResult? Function(String phone, String password)? makeLoginWithPhone,
    TResult? Function()? makeLoginWithApple,
    TResult? Function()? makeLoginWithGoogle,
    TResult? Function()? makeLoginWithGithub,
  }) {
    return makeLoginWithApple?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? makeLoginWithEmail,
    TResult Function(String phone, String password)? makeLoginWithPhone,
    TResult Function()? makeLoginWithApple,
    TResult Function()? makeLoginWithGoogle,
    TResult Function()? makeLoginWithGithub,
    required TResult orElse(),
  }) {
    if (makeLoginWithApple != null) {
      return makeLoginWithApple();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginBlocEventMakeLoginWithEmail value)
        makeLoginWithEmail,
    required TResult Function(_LoginBlocEventMakeLoginWithPhone value)
        makeLoginWithPhone,
    required TResult Function(_LoginBlocEventMakeLoginWithApple value)
        makeLoginWithApple,
    required TResult Function(_LoginBlocEventMakeLoginWithGoogle value)
        makeLoginWithGoogle,
    required TResult Function(_LoginBlocEventMakeLoginWithGithub value)
        makeLoginWithGithub,
  }) {
    return makeLoginWithApple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginBlocEventMakeLoginWithEmail value)?
        makeLoginWithEmail,
    TResult? Function(_LoginBlocEventMakeLoginWithPhone value)?
        makeLoginWithPhone,
    TResult? Function(_LoginBlocEventMakeLoginWithApple value)?
        makeLoginWithApple,
    TResult? Function(_LoginBlocEventMakeLoginWithGoogle value)?
        makeLoginWithGoogle,
    TResult? Function(_LoginBlocEventMakeLoginWithGithub value)?
        makeLoginWithGithub,
  }) {
    return makeLoginWithApple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginBlocEventMakeLoginWithEmail value)?
        makeLoginWithEmail,
    TResult Function(_LoginBlocEventMakeLoginWithPhone value)?
        makeLoginWithPhone,
    TResult Function(_LoginBlocEventMakeLoginWithApple value)?
        makeLoginWithApple,
    TResult Function(_LoginBlocEventMakeLoginWithGoogle value)?
        makeLoginWithGoogle,
    TResult Function(_LoginBlocEventMakeLoginWithGithub value)?
        makeLoginWithGithub,
    required TResult orElse(),
  }) {
    if (makeLoginWithApple != null) {
      return makeLoginWithApple(this);
    }
    return orElse();
  }
}

abstract class _LoginBlocEventMakeLoginWithApple implements LoginBlocEvent {
  const factory _LoginBlocEventMakeLoginWithApple() =
      _$LoginBlocEventMakeLoginWithAppleImpl;
}

/// @nodoc
abstract class _$$LoginBlocEventMakeLoginWithGoogleImplCopyWith<$Res> {
  factory _$$LoginBlocEventMakeLoginWithGoogleImplCopyWith(
          _$LoginBlocEventMakeLoginWithGoogleImpl value,
          $Res Function(_$LoginBlocEventMakeLoginWithGoogleImpl) then) =
      __$$LoginBlocEventMakeLoginWithGoogleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginBlocEventMakeLoginWithGoogleImplCopyWithImpl<$Res>
    extends _$LoginBlocEventCopyWithImpl<$Res,
        _$LoginBlocEventMakeLoginWithGoogleImpl>
    implements _$$LoginBlocEventMakeLoginWithGoogleImplCopyWith<$Res> {
  __$$LoginBlocEventMakeLoginWithGoogleImplCopyWithImpl(
      _$LoginBlocEventMakeLoginWithGoogleImpl _value,
      $Res Function(_$LoginBlocEventMakeLoginWithGoogleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginBlocEventMakeLoginWithGoogleImpl
    implements _LoginBlocEventMakeLoginWithGoogle {
  const _$LoginBlocEventMakeLoginWithGoogleImpl();

  @override
  String toString() {
    return 'LoginBlocEvent.makeLoginWithGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginBlocEventMakeLoginWithGoogleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) makeLoginWithEmail,
    required TResult Function(String phone, String password) makeLoginWithPhone,
    required TResult Function() makeLoginWithApple,
    required TResult Function() makeLoginWithGoogle,
    required TResult Function() makeLoginWithGithub,
  }) {
    return makeLoginWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? makeLoginWithEmail,
    TResult? Function(String phone, String password)? makeLoginWithPhone,
    TResult? Function()? makeLoginWithApple,
    TResult? Function()? makeLoginWithGoogle,
    TResult? Function()? makeLoginWithGithub,
  }) {
    return makeLoginWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? makeLoginWithEmail,
    TResult Function(String phone, String password)? makeLoginWithPhone,
    TResult Function()? makeLoginWithApple,
    TResult Function()? makeLoginWithGoogle,
    TResult Function()? makeLoginWithGithub,
    required TResult orElse(),
  }) {
    if (makeLoginWithGoogle != null) {
      return makeLoginWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginBlocEventMakeLoginWithEmail value)
        makeLoginWithEmail,
    required TResult Function(_LoginBlocEventMakeLoginWithPhone value)
        makeLoginWithPhone,
    required TResult Function(_LoginBlocEventMakeLoginWithApple value)
        makeLoginWithApple,
    required TResult Function(_LoginBlocEventMakeLoginWithGoogle value)
        makeLoginWithGoogle,
    required TResult Function(_LoginBlocEventMakeLoginWithGithub value)
        makeLoginWithGithub,
  }) {
    return makeLoginWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginBlocEventMakeLoginWithEmail value)?
        makeLoginWithEmail,
    TResult? Function(_LoginBlocEventMakeLoginWithPhone value)?
        makeLoginWithPhone,
    TResult? Function(_LoginBlocEventMakeLoginWithApple value)?
        makeLoginWithApple,
    TResult? Function(_LoginBlocEventMakeLoginWithGoogle value)?
        makeLoginWithGoogle,
    TResult? Function(_LoginBlocEventMakeLoginWithGithub value)?
        makeLoginWithGithub,
  }) {
    return makeLoginWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginBlocEventMakeLoginWithEmail value)?
        makeLoginWithEmail,
    TResult Function(_LoginBlocEventMakeLoginWithPhone value)?
        makeLoginWithPhone,
    TResult Function(_LoginBlocEventMakeLoginWithApple value)?
        makeLoginWithApple,
    TResult Function(_LoginBlocEventMakeLoginWithGoogle value)?
        makeLoginWithGoogle,
    TResult Function(_LoginBlocEventMakeLoginWithGithub value)?
        makeLoginWithGithub,
    required TResult orElse(),
  }) {
    if (makeLoginWithGoogle != null) {
      return makeLoginWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _LoginBlocEventMakeLoginWithGoogle implements LoginBlocEvent {
  const factory _LoginBlocEventMakeLoginWithGoogle() =
      _$LoginBlocEventMakeLoginWithGoogleImpl;
}

/// @nodoc
abstract class _$$LoginBlocEventMakeLoginWithGithubImplCopyWith<$Res> {
  factory _$$LoginBlocEventMakeLoginWithGithubImplCopyWith(
          _$LoginBlocEventMakeLoginWithGithubImpl value,
          $Res Function(_$LoginBlocEventMakeLoginWithGithubImpl) then) =
      __$$LoginBlocEventMakeLoginWithGithubImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginBlocEventMakeLoginWithGithubImplCopyWithImpl<$Res>
    extends _$LoginBlocEventCopyWithImpl<$Res,
        _$LoginBlocEventMakeLoginWithGithubImpl>
    implements _$$LoginBlocEventMakeLoginWithGithubImplCopyWith<$Res> {
  __$$LoginBlocEventMakeLoginWithGithubImplCopyWithImpl(
      _$LoginBlocEventMakeLoginWithGithubImpl _value,
      $Res Function(_$LoginBlocEventMakeLoginWithGithubImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginBlocEventMakeLoginWithGithubImpl
    implements _LoginBlocEventMakeLoginWithGithub {
  const _$LoginBlocEventMakeLoginWithGithubImpl();

  @override
  String toString() {
    return 'LoginBlocEvent.makeLoginWithGithub()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginBlocEventMakeLoginWithGithubImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) makeLoginWithEmail,
    required TResult Function(String phone, String password) makeLoginWithPhone,
    required TResult Function() makeLoginWithApple,
    required TResult Function() makeLoginWithGoogle,
    required TResult Function() makeLoginWithGithub,
  }) {
    return makeLoginWithGithub();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? makeLoginWithEmail,
    TResult? Function(String phone, String password)? makeLoginWithPhone,
    TResult? Function()? makeLoginWithApple,
    TResult? Function()? makeLoginWithGoogle,
    TResult? Function()? makeLoginWithGithub,
  }) {
    return makeLoginWithGithub?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? makeLoginWithEmail,
    TResult Function(String phone, String password)? makeLoginWithPhone,
    TResult Function()? makeLoginWithApple,
    TResult Function()? makeLoginWithGoogle,
    TResult Function()? makeLoginWithGithub,
    required TResult orElse(),
  }) {
    if (makeLoginWithGithub != null) {
      return makeLoginWithGithub();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginBlocEventMakeLoginWithEmail value)
        makeLoginWithEmail,
    required TResult Function(_LoginBlocEventMakeLoginWithPhone value)
        makeLoginWithPhone,
    required TResult Function(_LoginBlocEventMakeLoginWithApple value)
        makeLoginWithApple,
    required TResult Function(_LoginBlocEventMakeLoginWithGoogle value)
        makeLoginWithGoogle,
    required TResult Function(_LoginBlocEventMakeLoginWithGithub value)
        makeLoginWithGithub,
  }) {
    return makeLoginWithGithub(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginBlocEventMakeLoginWithEmail value)?
        makeLoginWithEmail,
    TResult? Function(_LoginBlocEventMakeLoginWithPhone value)?
        makeLoginWithPhone,
    TResult? Function(_LoginBlocEventMakeLoginWithApple value)?
        makeLoginWithApple,
    TResult? Function(_LoginBlocEventMakeLoginWithGoogle value)?
        makeLoginWithGoogle,
    TResult? Function(_LoginBlocEventMakeLoginWithGithub value)?
        makeLoginWithGithub,
  }) {
    return makeLoginWithGithub?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginBlocEventMakeLoginWithEmail value)?
        makeLoginWithEmail,
    TResult Function(_LoginBlocEventMakeLoginWithPhone value)?
        makeLoginWithPhone,
    TResult Function(_LoginBlocEventMakeLoginWithApple value)?
        makeLoginWithApple,
    TResult Function(_LoginBlocEventMakeLoginWithGoogle value)?
        makeLoginWithGoogle,
    TResult Function(_LoginBlocEventMakeLoginWithGithub value)?
        makeLoginWithGithub,
    required TResult orElse(),
  }) {
    if (makeLoginWithGithub != null) {
      return makeLoginWithGithub(this);
    }
    return orElse();
  }
}

abstract class _LoginBlocEventMakeLoginWithGithub implements LoginBlocEvent {
  const factory _LoginBlocEventMakeLoginWithGithub() =
      _$LoginBlocEventMakeLoginWithGithubImpl;
}

/// @nodoc
mixin _$LoginBlocSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginBlocSRShowError value) showError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginBlocSRShowError value)? showError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginBlocSRShowError value)? showError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginBlocSRCopyWith<$Res> {
  factory $LoginBlocSRCopyWith(
          LoginBlocSR value, $Res Function(LoginBlocSR) then) =
      _$LoginBlocSRCopyWithImpl<$Res, LoginBlocSR>;
}

/// @nodoc
class _$LoginBlocSRCopyWithImpl<$Res, $Val extends LoginBlocSR>
    implements $LoginBlocSRCopyWith<$Res> {
  _$LoginBlocSRCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginBlocSRShowErrorImplCopyWith<$Res> {
  factory _$$LoginBlocSRShowErrorImplCopyWith(_$LoginBlocSRShowErrorImpl value,
          $Res Function(_$LoginBlocSRShowErrorImpl) then) =
      __$$LoginBlocSRShowErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginBlocSRShowErrorImplCopyWithImpl<$Res>
    extends _$LoginBlocSRCopyWithImpl<$Res, _$LoginBlocSRShowErrorImpl>
    implements _$$LoginBlocSRShowErrorImplCopyWith<$Res> {
  __$$LoginBlocSRShowErrorImplCopyWithImpl(_$LoginBlocSRShowErrorImpl _value,
      $Res Function(_$LoginBlocSRShowErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginBlocSRShowErrorImpl implements _LoginBlocSRShowError {
  const _$LoginBlocSRShowErrorImpl();

  @override
  String toString() {
    return 'LoginBlocSR.showError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginBlocSRShowErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showError,
  }) {
    return showError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showError,
  }) {
    return showError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showError,
    required TResult orElse(),
  }) {
    if (showError != null) {
      return showError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginBlocSRShowError value) showError,
  }) {
    return showError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginBlocSRShowError value)? showError,
  }) {
    return showError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginBlocSRShowError value)? showError,
    required TResult orElse(),
  }) {
    if (showError != null) {
      return showError(this);
    }
    return orElse();
  }
}

abstract class _LoginBlocSRShowError implements LoginBlocSR {
  const factory _LoginBlocSRShowError() = _$LoginBlocSRShowErrorImpl;
}

/// @nodoc
mixin _$LoginBlocScreenState {}

/// @nodoc
abstract class $LoginBlocScreenStateCopyWith<$Res> {
  factory $LoginBlocScreenStateCopyWith(LoginBlocScreenState value,
          $Res Function(LoginBlocScreenState) then) =
      _$LoginBlocScreenStateCopyWithImpl<$Res, LoginBlocScreenState>;
}

/// @nodoc
class _$LoginBlocScreenStateCopyWithImpl<$Res,
        $Val extends LoginBlocScreenState>
    implements $LoginBlocScreenStateCopyWith<$Res> {
  _$LoginBlocScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginBlocScreenStateImplCopyWith<$Res> {
  factory _$$LoginBlocScreenStateImplCopyWith(_$LoginBlocScreenStateImpl value,
          $Res Function(_$LoginBlocScreenStateImpl) then) =
      __$$LoginBlocScreenStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginBlocScreenStateImplCopyWithImpl<$Res>
    extends _$LoginBlocScreenStateCopyWithImpl<$Res, _$LoginBlocScreenStateImpl>
    implements _$$LoginBlocScreenStateImplCopyWith<$Res> {
  __$$LoginBlocScreenStateImplCopyWithImpl(_$LoginBlocScreenStateImpl _value,
      $Res Function(_$LoginBlocScreenStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginBlocScreenStateImpl implements _LoginBlocScreenState {
  const _$LoginBlocScreenStateImpl();

  @override
  String toString() {
    return 'LoginBlocScreenState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginBlocScreenStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _LoginBlocScreenState implements LoginBlocScreenState {
  const factory _LoginBlocScreenState() = _$LoginBlocScreenStateImpl;
}
