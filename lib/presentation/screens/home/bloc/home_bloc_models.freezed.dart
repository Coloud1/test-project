// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(UserEntity user) updateUser,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(UserEntity user)? updateUser,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(UserEntity user)? updateUser,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeBlocEventGetUser value) getUser,
    required TResult Function(_HomeBlocEventUpdateUser value) updateUser,
    required TResult Function(_HomeBlocEventLogOut value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeBlocEventGetUser value)? getUser,
    TResult? Function(_HomeBlocEventUpdateUser value)? updateUser,
    TResult? Function(_HomeBlocEventLogOut value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeBlocEventGetUser value)? getUser,
    TResult Function(_HomeBlocEventUpdateUser value)? updateUser,
    TResult Function(_HomeBlocEventLogOut value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBlocEventCopyWith<$Res> {
  factory $HomeBlocEventCopyWith(
          HomeBlocEvent value, $Res Function(HomeBlocEvent) then) =
      _$HomeBlocEventCopyWithImpl<$Res, HomeBlocEvent>;
}

/// @nodoc
class _$HomeBlocEventCopyWithImpl<$Res, $Val extends HomeBlocEvent>
    implements $HomeBlocEventCopyWith<$Res> {
  _$HomeBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeBlocEventGetUserImplCopyWith<$Res> {
  factory _$$HomeBlocEventGetUserImplCopyWith(_$HomeBlocEventGetUserImpl value,
          $Res Function(_$HomeBlocEventGetUserImpl) then) =
      __$$HomeBlocEventGetUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeBlocEventGetUserImplCopyWithImpl<$Res>
    extends _$HomeBlocEventCopyWithImpl<$Res, _$HomeBlocEventGetUserImpl>
    implements _$$HomeBlocEventGetUserImplCopyWith<$Res> {
  __$$HomeBlocEventGetUserImplCopyWithImpl(_$HomeBlocEventGetUserImpl _value,
      $Res Function(_$HomeBlocEventGetUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeBlocEventGetUserImpl implements _HomeBlocEventGetUser {
  const _$HomeBlocEventGetUserImpl();

  @override
  String toString() {
    return 'HomeBlocEvent.getUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBlocEventGetUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(UserEntity user) updateUser,
    required TResult Function() logOut,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(UserEntity user)? updateUser,
    TResult? Function()? logOut,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(UserEntity user)? updateUser,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeBlocEventGetUser value) getUser,
    required TResult Function(_HomeBlocEventUpdateUser value) updateUser,
    required TResult Function(_HomeBlocEventLogOut value) logOut,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeBlocEventGetUser value)? getUser,
    TResult? Function(_HomeBlocEventUpdateUser value)? updateUser,
    TResult? Function(_HomeBlocEventLogOut value)? logOut,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeBlocEventGetUser value)? getUser,
    TResult Function(_HomeBlocEventUpdateUser value)? updateUser,
    TResult Function(_HomeBlocEventLogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _HomeBlocEventGetUser implements HomeBlocEvent {
  const factory _HomeBlocEventGetUser() = _$HomeBlocEventGetUserImpl;
}

/// @nodoc
abstract class _$$HomeBlocEventUpdateUserImplCopyWith<$Res> {
  factory _$$HomeBlocEventUpdateUserImplCopyWith(
          _$HomeBlocEventUpdateUserImpl value,
          $Res Function(_$HomeBlocEventUpdateUserImpl) then) =
      __$$HomeBlocEventUpdateUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user});

  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$HomeBlocEventUpdateUserImplCopyWithImpl<$Res>
    extends _$HomeBlocEventCopyWithImpl<$Res, _$HomeBlocEventUpdateUserImpl>
    implements _$$HomeBlocEventUpdateUserImplCopyWith<$Res> {
  __$$HomeBlocEventUpdateUserImplCopyWithImpl(
      _$HomeBlocEventUpdateUserImpl _value,
      $Res Function(_$HomeBlocEventUpdateUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$HomeBlocEventUpdateUserImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$HomeBlocEventUpdateUserImpl implements _HomeBlocEventUpdateUser {
  const _$HomeBlocEventUpdateUserImpl(this.user);

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'HomeBlocEvent.updateUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBlocEventUpdateUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeBlocEventUpdateUserImplCopyWith<_$HomeBlocEventUpdateUserImpl>
      get copyWith => __$$HomeBlocEventUpdateUserImplCopyWithImpl<
          _$HomeBlocEventUpdateUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(UserEntity user) updateUser,
    required TResult Function() logOut,
  }) {
    return updateUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(UserEntity user)? updateUser,
    TResult? Function()? logOut,
  }) {
    return updateUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(UserEntity user)? updateUser,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeBlocEventGetUser value) getUser,
    required TResult Function(_HomeBlocEventUpdateUser value) updateUser,
    required TResult Function(_HomeBlocEventLogOut value) logOut,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeBlocEventGetUser value)? getUser,
    TResult? Function(_HomeBlocEventUpdateUser value)? updateUser,
    TResult? Function(_HomeBlocEventLogOut value)? logOut,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeBlocEventGetUser value)? getUser,
    TResult Function(_HomeBlocEventUpdateUser value)? updateUser,
    TResult Function(_HomeBlocEventLogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class _HomeBlocEventUpdateUser implements HomeBlocEvent {
  const factory _HomeBlocEventUpdateUser(final UserEntity user) =
      _$HomeBlocEventUpdateUserImpl;

  UserEntity get user;
  @JsonKey(ignore: true)
  _$$HomeBlocEventUpdateUserImplCopyWith<_$HomeBlocEventUpdateUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeBlocEventLogOutImplCopyWith<$Res> {
  factory _$$HomeBlocEventLogOutImplCopyWith(_$HomeBlocEventLogOutImpl value,
          $Res Function(_$HomeBlocEventLogOutImpl) then) =
      __$$HomeBlocEventLogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeBlocEventLogOutImplCopyWithImpl<$Res>
    extends _$HomeBlocEventCopyWithImpl<$Res, _$HomeBlocEventLogOutImpl>
    implements _$$HomeBlocEventLogOutImplCopyWith<$Res> {
  __$$HomeBlocEventLogOutImplCopyWithImpl(_$HomeBlocEventLogOutImpl _value,
      $Res Function(_$HomeBlocEventLogOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeBlocEventLogOutImpl implements _HomeBlocEventLogOut {
  const _$HomeBlocEventLogOutImpl();

  @override
  String toString() {
    return 'HomeBlocEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBlocEventLogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(UserEntity user) updateUser,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(UserEntity user)? updateUser,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(UserEntity user)? updateUser,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeBlocEventGetUser value) getUser,
    required TResult Function(_HomeBlocEventUpdateUser value) updateUser,
    required TResult Function(_HomeBlocEventLogOut value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeBlocEventGetUser value)? getUser,
    TResult? Function(_HomeBlocEventUpdateUser value)? updateUser,
    TResult? Function(_HomeBlocEventLogOut value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeBlocEventGetUser value)? getUser,
    TResult Function(_HomeBlocEventUpdateUser value)? updateUser,
    TResult Function(_HomeBlocEventLogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _HomeBlocEventLogOut implements HomeBlocEvent {
  const factory _HomeBlocEventLogOut() = _$HomeBlocEventLogOutImpl;
}

/// @nodoc
mixin _$HomeBlocSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSR,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSR,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSR,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeBlocSROnSR value) onSR,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeBlocSROnSR value)? onSR,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeBlocSROnSR value)? onSR,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBlocSRCopyWith<$Res> {
  factory $HomeBlocSRCopyWith(
          HomeBlocSR value, $Res Function(HomeBlocSR) then) =
      _$HomeBlocSRCopyWithImpl<$Res, HomeBlocSR>;
}

/// @nodoc
class _$HomeBlocSRCopyWithImpl<$Res, $Val extends HomeBlocSR>
    implements $HomeBlocSRCopyWith<$Res> {
  _$HomeBlocSRCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeBlocSROnSRImplCopyWith<$Res> {
  factory _$$HomeBlocSROnSRImplCopyWith(_$HomeBlocSROnSRImpl value,
          $Res Function(_$HomeBlocSROnSRImpl) then) =
      __$$HomeBlocSROnSRImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeBlocSROnSRImplCopyWithImpl<$Res>
    extends _$HomeBlocSRCopyWithImpl<$Res, _$HomeBlocSROnSRImpl>
    implements _$$HomeBlocSROnSRImplCopyWith<$Res> {
  __$$HomeBlocSROnSRImplCopyWithImpl(
      _$HomeBlocSROnSRImpl _value, $Res Function(_$HomeBlocSROnSRImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeBlocSROnSRImpl implements _HomeBlocSROnSR {
  const _$HomeBlocSROnSRImpl();

  @override
  String toString() {
    return 'HomeBlocSR.onSR()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeBlocSROnSRImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSR,
  }) {
    return onSR();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSR,
  }) {
    return onSR?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSR,
    required TResult orElse(),
  }) {
    if (onSR != null) {
      return onSR();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeBlocSROnSR value) onSR,
  }) {
    return onSR(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeBlocSROnSR value)? onSR,
  }) {
    return onSR?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeBlocSROnSR value)? onSR,
    required TResult orElse(),
  }) {
    if (onSR != null) {
      return onSR(this);
    }
    return orElse();
  }
}

abstract class _HomeBlocSROnSR implements HomeBlocSR {
  const factory _HomeBlocSROnSR() = _$HomeBlocSROnSRImpl;
}

/// @nodoc
mixin _$HomeBlocScreenState {
  UserEntity get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeBlocScreenStateCopyWith<HomeBlocScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBlocScreenStateCopyWith<$Res> {
  factory $HomeBlocScreenStateCopyWith(
          HomeBlocScreenState value, $Res Function(HomeBlocScreenState) then) =
      _$HomeBlocScreenStateCopyWithImpl<$Res, HomeBlocScreenState>;
  @useResult
  $Res call({UserEntity user});

  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class _$HomeBlocScreenStateCopyWithImpl<$Res, $Val extends HomeBlocScreenState>
    implements $HomeBlocScreenStateCopyWith<$Res> {
  _$HomeBlocScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeBlocScreenStateImplCopyWith<$Res>
    implements $HomeBlocScreenStateCopyWith<$Res> {
  factory _$$HomeBlocScreenStateImplCopyWith(_$HomeBlocScreenStateImpl value,
          $Res Function(_$HomeBlocScreenStateImpl) then) =
      __$$HomeBlocScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity user});

  @override
  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$HomeBlocScreenStateImplCopyWithImpl<$Res>
    extends _$HomeBlocScreenStateCopyWithImpl<$Res, _$HomeBlocScreenStateImpl>
    implements _$$HomeBlocScreenStateImplCopyWith<$Res> {
  __$$HomeBlocScreenStateImplCopyWithImpl(_$HomeBlocScreenStateImpl _value,
      $Res Function(_$HomeBlocScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$HomeBlocScreenStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$HomeBlocScreenStateImpl implements _HomeBlocScreenState {
  const _$HomeBlocScreenStateImpl({required this.user});

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'HomeBlocScreenState(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBlocScreenStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeBlocScreenStateImplCopyWith<_$HomeBlocScreenStateImpl> get copyWith =>
      __$$HomeBlocScreenStateImplCopyWithImpl<_$HomeBlocScreenStateImpl>(
          this, _$identity);
}

abstract class _HomeBlocScreenState implements HomeBlocScreenState {
  const factory _HomeBlocScreenState({required final UserEntity user}) =
      _$HomeBlocScreenStateImpl;

  @override
  UserEntity get user;
  @override
  @JsonKey(ignore: true)
  _$$HomeBlocScreenStateImplCopyWith<_$HomeBlocScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
