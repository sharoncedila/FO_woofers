// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'province_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RetrieveAllProvinceResponse _$RetrieveAllProvinceResponseFromJson(
    Map<String, dynamic> json) {
  return _RetrieveAllProvinceResponse.fromJson(json);
}

/// @nodoc
mixin _$RetrieveAllProvinceResponse {
  String? get provinceId => throw _privateConstructorUsedError;
  String? get provinceName => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RetrieveAllProvinceResponseCopyWith<RetrieveAllProvinceResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetrieveAllProvinceResponseCopyWith<$Res> {
  factory $RetrieveAllProvinceResponseCopyWith(
          RetrieveAllProvinceResponse value,
          $Res Function(RetrieveAllProvinceResponse) then) =
      _$RetrieveAllProvinceResponseCopyWithImpl<$Res,
          RetrieveAllProvinceResponse>;
  @useResult
  $Res call(
      {String? provinceId,
      String? provinceName,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class _$RetrieveAllProvinceResponseCopyWithImpl<$Res,
        $Val extends RetrieveAllProvinceResponse>
    implements $RetrieveAllProvinceResponseCopyWith<$Res> {
  _$RetrieveAllProvinceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinceId = freezed,
    Object? provinceName = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceName: freezed == provinceName
          ? _value.provinceName
          : provinceName // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RetrieveAllProvinceResponseImplCopyWith<$Res>
    implements $RetrieveAllProvinceResponseCopyWith<$Res> {
  factory _$$RetrieveAllProvinceResponseImplCopyWith(
          _$RetrieveAllProvinceResponseImpl value,
          $Res Function(_$RetrieveAllProvinceResponseImpl) then) =
      __$$RetrieveAllProvinceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? provinceId,
      String? provinceName,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class __$$RetrieveAllProvinceResponseImplCopyWithImpl<$Res>
    extends _$RetrieveAllProvinceResponseCopyWithImpl<$Res,
        _$RetrieveAllProvinceResponseImpl>
    implements _$$RetrieveAllProvinceResponseImplCopyWith<$Res> {
  __$$RetrieveAllProvinceResponseImplCopyWithImpl(
      _$RetrieveAllProvinceResponseImpl _value,
      $Res Function(_$RetrieveAllProvinceResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinceId = freezed,
    Object? provinceName = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$RetrieveAllProvinceResponseImpl(
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceName: freezed == provinceName
          ? _value.provinceName
          : provinceName // ignore: cast_nullable_to_non_nullable
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
class _$RetrieveAllProvinceResponseImpl
    implements _RetrieveAllProvinceResponse {
  _$RetrieveAllProvinceResponseImpl(
      {required this.provinceId,
      required this.provinceName,
      required this.errorCode,
      required this.errorMessage});

  factory _$RetrieveAllProvinceResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RetrieveAllProvinceResponseImplFromJson(json);

  @override
  final String? provinceId;
  @override
  final String? provinceName;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'RetrieveAllProvinceResponse(provinceId: $provinceId, provinceName: $provinceName, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetrieveAllProvinceResponseImpl &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId) &&
            (identical(other.provinceName, provinceName) ||
                other.provinceName == provinceName) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, provinceId, provinceName, errorCode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RetrieveAllProvinceResponseImplCopyWith<_$RetrieveAllProvinceResponseImpl>
      get copyWith => __$$RetrieveAllProvinceResponseImplCopyWithImpl<
          _$RetrieveAllProvinceResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RetrieveAllProvinceResponseImplToJson(
      this,
    );
  }
}

abstract class _RetrieveAllProvinceResponse
    implements RetrieveAllProvinceResponse {
  factory _RetrieveAllProvinceResponse(
      {required final String? provinceId,
      required final String? provinceName,
      required final String? errorCode,
      required final String? errorMessage}) = _$RetrieveAllProvinceResponseImpl;

  factory _RetrieveAllProvinceResponse.fromJson(Map<String, dynamic> json) =
      _$RetrieveAllProvinceResponseImpl.fromJson;

  @override
  String? get provinceId;
  @override
  String? get provinceName;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$RetrieveAllProvinceResponseImplCopyWith<_$RetrieveAllProvinceResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
