// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEntity {
  List<UserProviderData> get providerData => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get photoURL => throw _privateConstructorUsedError;
  UserMetadataEntity get userMetadata => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res, UserEntity>;
  @useResult
  $Res call(
      {List<UserProviderData> providerData,
      String uid,
      String displayName,
      String email,
      String photoURL,
      UserMetadataEntity userMetadata});

  $UserMetadataEntityCopyWith<$Res> get userMetadata;
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res, $Val extends UserEntity>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? providerData = null,
    Object? uid = null,
    Object? displayName = null,
    Object? email = null,
    Object? photoURL = null,
    Object? userMetadata = null,
  }) {
    return _then(_value.copyWith(
      providerData: null == providerData
          ? _value.providerData
          : providerData // ignore: cast_nullable_to_non_nullable
              as List<UserProviderData>,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      photoURL: null == photoURL
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String,
      userMetadata: null == userMetadata
          ? _value.userMetadata
          : userMetadata // ignore: cast_nullable_to_non_nullable
              as UserMetadataEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserMetadataEntityCopyWith<$Res> get userMetadata {
    return $UserMetadataEntityCopyWith<$Res>(_value.userMetadata, (value) {
      return _then(_value.copyWith(userMetadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserEntityImplCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$$UserEntityImplCopyWith(
          _$UserEntityImpl value, $Res Function(_$UserEntityImpl) then) =
      __$$UserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserProviderData> providerData,
      String uid,
      String displayName,
      String email,
      String photoURL,
      UserMetadataEntity userMetadata});

  @override
  $UserMetadataEntityCopyWith<$Res> get userMetadata;
}

/// @nodoc
class __$$UserEntityImplCopyWithImpl<$Res>
    extends _$UserEntityCopyWithImpl<$Res, _$UserEntityImpl>
    implements _$$UserEntityImplCopyWith<$Res> {
  __$$UserEntityImplCopyWithImpl(
      _$UserEntityImpl _value, $Res Function(_$UserEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? providerData = null,
    Object? uid = null,
    Object? displayName = null,
    Object? email = null,
    Object? photoURL = null,
    Object? userMetadata = null,
  }) {
    return _then(_$UserEntityImpl(
      providerData: null == providerData
          ? _value._providerData
          : providerData // ignore: cast_nullable_to_non_nullable
              as List<UserProviderData>,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      photoURL: null == photoURL
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String,
      userMetadata: null == userMetadata
          ? _value.userMetadata
          : userMetadata // ignore: cast_nullable_to_non_nullable
              as UserMetadataEntity,
    ));
  }
}

/// @nodoc

class _$UserEntityImpl implements _UserEntity {
  const _$UserEntityImpl(
      {required final List<UserProviderData> providerData,
      required this.uid,
      required this.displayName,
      required this.email,
      required this.photoURL,
      required this.userMetadata})
      : _providerData = providerData;

  final List<UserProviderData> _providerData;
  @override
  List<UserProviderData> get providerData {
    if (_providerData is EqualUnmodifiableListView) return _providerData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_providerData);
  }

  @override
  final String uid;
  @override
  final String displayName;
  @override
  final String email;
  @override
  final String photoURL;
  @override
  final UserMetadataEntity userMetadata;

  @override
  String toString() {
    return 'UserEntity(providerData: $providerData, uid: $uid, displayName: $displayName, email: $email, photoURL: $photoURL, userMetadata: $userMetadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._providerData, _providerData) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.photoURL, photoURL) ||
                other.photoURL == photoURL) &&
            (identical(other.userMetadata, userMetadata) ||
                other.userMetadata == userMetadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_providerData),
      uid,
      displayName,
      email,
      photoURL,
      userMetadata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEntityImplCopyWith<_$UserEntityImpl> get copyWith =>
      __$$UserEntityImplCopyWithImpl<_$UserEntityImpl>(this, _$identity);
}

abstract class _UserEntity implements UserEntity {
  const factory _UserEntity(
      {required final List<UserProviderData> providerData,
      required final String uid,
      required final String displayName,
      required final String email,
      required final String photoURL,
      required final UserMetadataEntity userMetadata}) = _$UserEntityImpl;

  @override
  List<UserProviderData> get providerData;
  @override
  String get uid;
  @override
  String get displayName;
  @override
  String get email;
  @override
  String get photoURL;
  @override
  UserMetadataEntity get userMetadata;
  @override
  @JsonKey(ignore: true)
  _$$UserEntityImplCopyWith<_$UserEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
