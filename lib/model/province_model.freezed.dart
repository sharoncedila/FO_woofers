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

Province _$ProvinceFromJson(Map<String, dynamic> json) {
  return _Province.fromJson(json);
}

/// @nodoc
mixin _$Province {
  String? get provinceId => throw _privateConstructorUsedError;
  String get provinceName => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvinceCopyWith<Province> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceCopyWith<$Res> {
  factory $ProvinceCopyWith(Province value, $Res Function(Province) then) =
      _$ProvinceCopyWithImpl<$Res, Province>;
  @useResult
  $Res call(
      {String? provinceId,
      String provinceName,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class _$ProvinceCopyWithImpl<$Res, $Val extends Province>
    implements $ProvinceCopyWith<$Res> {
  _$ProvinceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinceId = freezed,
    Object? provinceName = null,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceName: null == provinceName
          ? _value.provinceName
          : provinceName // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$ProvinceImplCopyWith<$Res>
    implements $ProvinceCopyWith<$Res> {
  factory _$$ProvinceImplCopyWith(
          _$ProvinceImpl value, $Res Function(_$ProvinceImpl) then) =
      __$$ProvinceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? provinceId,
      String provinceName,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class __$$ProvinceImplCopyWithImpl<$Res>
    extends _$ProvinceCopyWithImpl<$Res, _$ProvinceImpl>
    implements _$$ProvinceImplCopyWith<$Res> {
  __$$ProvinceImplCopyWithImpl(
      _$ProvinceImpl _value, $Res Function(_$ProvinceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provinceId = freezed,
    Object? provinceName = null,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ProvinceImpl(
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceName: null == provinceName
          ? _value.provinceName
          : provinceName // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$ProvinceImpl implements _Province {
  _$ProvinceImpl(
      {required this.provinceId,
      required this.provinceName,
      required this.errorCode,
      required this.errorMessage});

  factory _$ProvinceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProvinceImplFromJson(json);

  @override
  final String? provinceId;
  @override
  final String provinceName;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'Province(provinceId: $provinceId, provinceName: $provinceName, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProvinceImpl &&
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
  _$$ProvinceImplCopyWith<_$ProvinceImpl> get copyWith =>
      __$$ProvinceImplCopyWithImpl<_$ProvinceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProvinceImplToJson(
      this,
    );
  }
}

abstract class _Province implements Province {
  factory _Province(
      {required final String? provinceId,
      required final String provinceName,
      required final String? errorCode,
      required final String? errorMessage}) = _$ProvinceImpl;

  factory _Province.fromJson(Map<String, dynamic> json) =
      _$ProvinceImpl.fromJson;

  @override
  String? get provinceId;
  @override
  String get provinceName;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ProvinceImplCopyWith<_$ProvinceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RetrieveAllProvinceResponse _$RetrieveAllProvinceResponseFromJson(
    Map<String, dynamic> json) {
  return _RetrieveAllProvinceResponse.fromJson(json);
}

/// @nodoc
mixin _$RetrieveAllProvinceResponse {
  List<Province> get provinceList => throw _privateConstructorUsedError;

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
  $Res call({List<Province> provinceList});
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
    Object? provinceList = null,
  }) {
    return _then(_value.copyWith(
      provinceList: null == provinceList
          ? _value.provinceList
          : provinceList // ignore: cast_nullable_to_non_nullable
              as List<Province>,
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
  $Res call({List<Province> provinceList});
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
    Object? provinceList = null,
  }) {
    return _then(_$RetrieveAllProvinceResponseImpl(
      provinceList: null == provinceList
          ? _value._provinceList
          : provinceList // ignore: cast_nullable_to_non_nullable
              as List<Province>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RetrieveAllProvinceResponseImpl
    implements _RetrieveAllProvinceResponse {
  _$RetrieveAllProvinceResponseImpl(
      {required final List<Province> provinceList})
      : _provinceList = provinceList;

  factory _$RetrieveAllProvinceResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RetrieveAllProvinceResponseImplFromJson(json);

  final List<Province> _provinceList;
  @override
  List<Province> get provinceList {
    if (_provinceList is EqualUnmodifiableListView) return _provinceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_provinceList);
  }

  @override
  String toString() {
    return 'RetrieveAllProvinceResponse(provinceList: $provinceList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetrieveAllProvinceResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._provinceList, _provinceList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_provinceList));

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
          {required final List<Province> provinceList}) =
      _$RetrieveAllProvinceResponseImpl;

  factory _RetrieveAllProvinceResponse.fromJson(Map<String, dynamic> json) =
      _$RetrieveAllProvinceResponseImpl.fromJson;

  @override
  List<Province> get provinceList;
  @override
  @JsonKey(ignore: true)
  _$$RetrieveAllProvinceResponseImplCopyWith<_$RetrieveAllProvinceResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
