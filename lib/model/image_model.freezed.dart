// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadImageResponse _$UploadImageResponseFromJson(Map<String, dynamic> json) {
  return _UploadImageResponse.fromJson(json);
}

/// @nodoc
mixin _$UploadImageResponse {
  String? get fileName => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadImageResponseCopyWith<UploadImageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadImageResponseCopyWith<$Res> {
  factory $UploadImageResponseCopyWith(
          UploadImageResponse value, $Res Function(UploadImageResponse) then) =
      _$UploadImageResponseCopyWithImpl<$Res, UploadImageResponse>;
  @useResult
  $Res call({String? fileName, String? errorCode, String? errorMessage});
}

/// @nodoc
class _$UploadImageResponseCopyWithImpl<$Res, $Val extends UploadImageResponse>
    implements $UploadImageResponseCopyWith<$Res> {
  _$UploadImageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadImageResponseImplCopyWith<$Res>
    implements $UploadImageResponseCopyWith<$Res> {
  factory _$$UploadImageResponseImplCopyWith(_$UploadImageResponseImpl value,
          $Res Function(_$UploadImageResponseImpl) then) =
      __$$UploadImageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? fileName, String? errorCode, String? errorMessage});
}

/// @nodoc
class __$$UploadImageResponseImplCopyWithImpl<$Res>
    extends _$UploadImageResponseCopyWithImpl<$Res, _$UploadImageResponseImpl>
    implements _$$UploadImageResponseImplCopyWith<$Res> {
  __$$UploadImageResponseImplCopyWithImpl(_$UploadImageResponseImpl _value,
      $Res Function(_$UploadImageResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$UploadImageResponseImpl(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadImageResponseImpl implements _UploadImageResponse {
  _$UploadImageResponseImpl(
      {required this.fileName,
      required this.errorCode,
      required this.errorMessage});

  factory _$UploadImageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadImageResponseImplFromJson(json);

  @override
  final String? fileName;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'UploadImageResponse(fileName: $fileName, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImageResponseImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fileName, errorCode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImageResponseImplCopyWith<_$UploadImageResponseImpl> get copyWith =>
      __$$UploadImageResponseImplCopyWithImpl<_$UploadImageResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadImageResponseImplToJson(
      this,
    );
  }
}

abstract class _UploadImageResponse implements UploadImageResponse {
  factory _UploadImageResponse(
      {required final String? fileName,
      required final String? errorCode,
      required final String? errorMessage}) = _$UploadImageResponseImpl;

  factory _UploadImageResponse.fromJson(Map<String, dynamic> json) =
      _$UploadImageResponseImpl.fromJson;

  @override
  String? get fileName;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$UploadImageResponseImplCopyWith<_$UploadImageResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
