// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserMetadataEntity {
  DateTime get creationTime => throw _privateConstructorUsedError;
  DateTime get lastSignInTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserMetadataEntityCopyWith<UserMetadataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMetadataEntityCopyWith<$Res> {
  factory $UserMetadataEntityCopyWith(
          UserMetadataEntity value, $Res Function(UserMetadataEntity) then) =
      _$UserMetadataEntityCopyWithImpl<$Res, UserMetadataEntity>;
  @useResult
  $Res call({DateTime creationTime, DateTime lastSignInTime});
}

/// @nodoc
class _$UserMetadataEntityCopyWithImpl<$Res, $Val extends UserMetadataEntity>
    implements $UserMetadataEntityCopyWith<$Res> {
  _$UserMetadataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creationTime = null,
    Object? lastSignInTime = null,
  }) {
    return _then(_value.copyWith(
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastSignInTime: null == lastSignInTime
          ? _value.lastSignInTime
          : lastSignInTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserMetadataEntityImplCopyWith<$Res>
    implements $UserMetadataEntityCopyWith<$Res> {
  factory _$$UserMetadataEntityImplCopyWith(_$UserMetadataEntityImpl value,
          $Res Function(_$UserMetadataEntityImpl) then) =
      __$$UserMetadataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime creationTime, DateTime lastSignInTime});
}

/// @nodoc
class __$$UserMetadataEntityImplCopyWithImpl<$Res>
    extends _$UserMetadataEntityCopyWithImpl<$Res, _$UserMetadataEntityImpl>
    implements _$$UserMetadataEntityImplCopyWith<$Res> {
  __$$UserMetadataEntityImplCopyWithImpl(_$UserMetadataEntityImpl _value,
      $Res Function(_$UserMetadataEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creationTime = null,
    Object? lastSignInTime = null,
  }) {
    return _then(_$UserMetadataEntityImpl(
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastSignInTime: null == lastSignInTime
          ? _value.lastSignInTime
          : lastSignInTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UserMetadataEntityImpl implements _UserMetadataEntity {
  const _$UserMetadataEntityImpl(
      {required this.creationTime, required this.lastSignInTime});

  @override
  final DateTime creationTime;
  @override
  final DateTime lastSignInTime;

  @override
  String toString() {
    return 'UserMetadataEntity(creationTime: $creationTime, lastSignInTime: $lastSignInTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserMetadataEntityImpl &&
            (identical(other.creationTime, creationTime) ||
                other.creationTime == creationTime) &&
            (identical(other.lastSignInTime, lastSignInTime) ||
                other.lastSignInTime == lastSignInTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creationTime, lastSignInTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserMetadataEntityImplCopyWith<_$UserMetadataEntityImpl> get copyWith =>
      __$$UserMetadataEntityImplCopyWithImpl<_$UserMetadataEntityImpl>(
          this, _$identity);
}

abstract class _UserMetadataEntity implements UserMetadataEntity {
  const factory _UserMetadataEntity(
      {required final DateTime creationTime,
      required final DateTime lastSignInTime}) = _$UserMetadataEntityImpl;

  @override
  DateTime get creationTime;
  @override
  DateTime get lastSignInTime;
  @override
  @JsonKey(ignore: true)
  _$$UserMetadataEntityImplCopyWith<_$UserMetadataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
