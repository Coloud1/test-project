// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_storage_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FileStorageEntity {
  String get fullPath => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileStorageEntityCopyWith<FileStorageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileStorageEntityCopyWith<$Res> {
  factory $FileStorageEntityCopyWith(
          FileStorageEntity value, $Res Function(FileStorageEntity) then) =
      _$FileStorageEntityCopyWithImpl<$Res, FileStorageEntity>;
  @useResult
  $Res call({String fullPath, String fileName});
}

/// @nodoc
class _$FileStorageEntityCopyWithImpl<$Res, $Val extends FileStorageEntity>
    implements $FileStorageEntityCopyWith<$Res> {
  _$FileStorageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullPath = null,
    Object? fileName = null,
  }) {
    return _then(_value.copyWith(
      fullPath: null == fullPath
          ? _value.fullPath
          : fullPath // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileStorageEntityImplCopyWith<$Res>
    implements $FileStorageEntityCopyWith<$Res> {
  factory _$$FileStorageEntityImplCopyWith(_$FileStorageEntityImpl value,
          $Res Function(_$FileStorageEntityImpl) then) =
      __$$FileStorageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fullPath, String fileName});
}

/// @nodoc
class __$$FileStorageEntityImplCopyWithImpl<$Res>
    extends _$FileStorageEntityCopyWithImpl<$Res, _$FileStorageEntityImpl>
    implements _$$FileStorageEntityImplCopyWith<$Res> {
  __$$FileStorageEntityImplCopyWithImpl(_$FileStorageEntityImpl _value,
      $Res Function(_$FileStorageEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullPath = null,
    Object? fileName = null,
  }) {
    return _then(_$FileStorageEntityImpl(
      fullPath: null == fullPath
          ? _value.fullPath
          : fullPath // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FileStorageEntityImpl extends _FileStorageEntity {
  const _$FileStorageEntityImpl(
      {required this.fullPath, required this.fileName})
      : super._();

  @override
  final String fullPath;
  @override
  final String fileName;

  @override
  String toString() {
    return 'FileStorageEntity(fullPath: $fullPath, fileName: $fileName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileStorageEntityImpl &&
            (identical(other.fullPath, fullPath) ||
                other.fullPath == fullPath) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullPath, fileName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileStorageEntityImplCopyWith<_$FileStorageEntityImpl> get copyWith =>
      __$$FileStorageEntityImplCopyWithImpl<_$FileStorageEntityImpl>(
          this, _$identity);
}

abstract class _FileStorageEntity extends FileStorageEntity {
  const factory _FileStorageEntity(
      {required final String fullPath,
      required final String fileName}) = _$FileStorageEntityImpl;
  const _FileStorageEntity._() : super._();

  @override
  String get fullPath;
  @override
  String get fileName;
  @override
  @JsonKey(ignore: true)
  _$$FileStorageEntityImplCopyWith<_$FileStorageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
