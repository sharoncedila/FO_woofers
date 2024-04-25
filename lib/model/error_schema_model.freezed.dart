// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_schema_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ErrorSchema _$ErrorSchemaFromJson(Map<String, dynamic> json) {
  return _ErrorSchema.fromJson(json);
}

/// @nodoc
mixin _$ErrorSchema {
  String get errorCode => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorSchemaCopyWith<ErrorSchema> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorSchemaCopyWith<$Res> {
  factory $ErrorSchemaCopyWith(
          ErrorSchema value, $Res Function(ErrorSchema) then) =
      _$ErrorSchemaCopyWithImpl<$Res, ErrorSchema>;
  @useResult
  $Res call({String errorCode, String errorMessage});
}

/// @nodoc
class _$ErrorSchemaCopyWithImpl<$Res, $Val extends ErrorSchema>
    implements $ErrorSchemaCopyWith<$Res> {
  _$ErrorSchemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorSchemaImplCopyWith<$Res>
    implements $ErrorSchemaCopyWith<$Res> {
  factory _$$ErrorSchemaImplCopyWith(
          _$ErrorSchemaImpl value, $Res Function(_$ErrorSchemaImpl) then) =
      __$$ErrorSchemaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorCode, String errorMessage});
}

/// @nodoc
class __$$ErrorSchemaImplCopyWithImpl<$Res>
    extends _$ErrorSchemaCopyWithImpl<$Res, _$ErrorSchemaImpl>
    implements _$$ErrorSchemaImplCopyWith<$Res> {
  __$$ErrorSchemaImplCopyWithImpl(
      _$ErrorSchemaImpl _value, $Res Function(_$ErrorSchemaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorSchemaImpl(
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorSchemaImpl implements _ErrorSchema {
  _$ErrorSchemaImpl({required this.errorCode, required this.errorMessage});

  factory _$ErrorSchemaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorSchemaImplFromJson(json);

  @override
  final String errorCode;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ErrorSchema(errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorSchemaImpl &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, errorCode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorSchemaImplCopyWith<_$ErrorSchemaImpl> get copyWith =>
      __$$ErrorSchemaImplCopyWithImpl<_$ErrorSchemaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorSchemaImplToJson(
      this,
    );
  }
}

abstract class _ErrorSchema implements ErrorSchema {
  factory _ErrorSchema(
      {required final String errorCode,
      required final String errorMessage}) = _$ErrorSchemaImpl;

  factory _ErrorSchema.fromJson(Map<String, dynamic> json) =
      _$ErrorSchemaImpl.fromJson;

  @override
  String get errorCode;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ErrorSchemaImplCopyWith<_$ErrorSchemaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
