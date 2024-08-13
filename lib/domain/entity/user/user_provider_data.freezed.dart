// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_provider_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserProviderData {
  UserProviderDataId get providerId => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserProviderDataCopyWith<UserProviderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProviderDataCopyWith<$Res> {
  factory $UserProviderDataCopyWith(
          UserProviderData value, $Res Function(UserProviderData) then) =
      _$UserProviderDataCopyWithImpl<$Res, UserProviderData>;
  @useResult
  $Res call({UserProviderDataId providerId, String uid});
}

/// @nodoc
class _$UserProviderDataCopyWithImpl<$Res, $Val extends UserProviderData>
    implements $UserProviderDataCopyWith<$Res> {
  _$UserProviderDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? providerId = null,
    Object? uid = null,
  }) {
    return _then(_value.copyWith(
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as UserProviderDataId,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProviderDataImplCopyWith<$Res>
    implements $UserProviderDataCopyWith<$Res> {
  factory _$$UserProviderDataImplCopyWith(_$UserProviderDataImpl value,
          $Res Function(_$UserProviderDataImpl) then) =
      __$$UserProviderDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserProviderDataId providerId, String uid});
}

/// @nodoc
class __$$UserProviderDataImplCopyWithImpl<$Res>
    extends _$UserProviderDataCopyWithImpl<$Res, _$UserProviderDataImpl>
    implements _$$UserProviderDataImplCopyWith<$Res> {
  __$$UserProviderDataImplCopyWithImpl(_$UserProviderDataImpl _value,
      $Res Function(_$UserProviderDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? providerId = null,
    Object? uid = null,
  }) {
    return _then(_$UserProviderDataImpl(
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as UserProviderDataId,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserProviderDataImpl implements _UserProviderData {
  const _$UserProviderDataImpl({required this.providerId, required this.uid});

  @override
  final UserProviderDataId providerId;
  @override
  final String uid;

  @override
  String toString() {
    return 'UserProviderData(providerId: $providerId, uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProviderDataImpl &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, providerId, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProviderDataImplCopyWith<_$UserProviderDataImpl> get copyWith =>
      __$$UserProviderDataImplCopyWithImpl<_$UserProviderDataImpl>(
          this, _$identity);
}

abstract class _UserProviderData implements UserProviderData {
  const factory _UserProviderData(
      {required final UserProviderDataId providerId,
      required final String uid}) = _$UserProviderDataImpl;

  @override
  UserProviderDataId get providerId;
  @override
  String get uid;
  @override
  @JsonKey(ignore: true)
  _$$UserProviderDataImplCopyWith<_$UserProviderDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
