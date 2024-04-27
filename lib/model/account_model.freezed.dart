// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditProfileRequest _$EditProfileRequestFromJson(Map<String, dynamic> json) {
  return _EditProfileRequest.fromJson(json);
}

/// @nodoc
mixin _$EditProfileRequest {
  String? get fullName => throw _privateConstructorUsedError;
  String? get provinceName => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditProfileRequestCopyWith<EditProfileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileRequestCopyWith<$Res> {
  factory $EditProfileRequestCopyWith(
          EditProfileRequest value, $Res Function(EditProfileRequest) then) =
      _$EditProfileRequestCopyWithImpl<$Res, EditProfileRequest>;
  @useResult
  $Res call(
      {String? fullName,
      String? provinceName,
      String? phoneNumber,
      String? description});
}

/// @nodoc
class _$EditProfileRequestCopyWithImpl<$Res, $Val extends EditProfileRequest>
    implements $EditProfileRequestCopyWith<$Res> {
  _$EditProfileRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? provinceName = freezed,
    Object? phoneNumber = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceName: freezed == provinceName
          ? _value.provinceName
          : provinceName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditProfileRequestImplCopyWith<$Res>
    implements $EditProfileRequestCopyWith<$Res> {
  factory _$$EditProfileRequestImplCopyWith(_$EditProfileRequestImpl value,
          $Res Function(_$EditProfileRequestImpl) then) =
      __$$EditProfileRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fullName,
      String? provinceName,
      String? phoneNumber,
      String? description});
}

/// @nodoc
class __$$EditProfileRequestImplCopyWithImpl<$Res>
    extends _$EditProfileRequestCopyWithImpl<$Res, _$EditProfileRequestImpl>
    implements _$$EditProfileRequestImplCopyWith<$Res> {
  __$$EditProfileRequestImplCopyWithImpl(_$EditProfileRequestImpl _value,
      $Res Function(_$EditProfileRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? provinceName = freezed,
    Object? phoneNumber = freezed,
    Object? description = freezed,
  }) {
    return _then(_$EditProfileRequestImpl(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceName: freezed == provinceName
          ? _value.provinceName
          : provinceName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditProfileRequestImpl implements _EditProfileRequest {
  _$EditProfileRequestImpl(
      {required this.fullName,
      required this.provinceName,
      required this.phoneNumber,
      required this.description});

  factory _$EditProfileRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditProfileRequestImplFromJson(json);

  @override
  final String? fullName;
  @override
  final String? provinceName;
  @override
  final String? phoneNumber;
  @override
  final String? description;

  @override
  String toString() {
    return 'EditProfileRequest(fullName: $fullName, provinceName: $provinceName, phoneNumber: $phoneNumber, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileRequestImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.provinceName, provinceName) ||
                other.provinceName == provinceName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fullName, provinceName, phoneNumber, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileRequestImplCopyWith<_$EditProfileRequestImpl> get copyWith =>
      __$$EditProfileRequestImplCopyWithImpl<_$EditProfileRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditProfileRequestImplToJson(
      this,
    );
  }
}

abstract class _EditProfileRequest implements EditProfileRequest {
  factory _EditProfileRequest(
      {required final String? fullName,
      required final String? provinceName,
      required final String? phoneNumber,
      required final String? description}) = _$EditProfileRequestImpl;

  factory _EditProfileRequest.fromJson(Map<String, dynamic> json) =
      _$EditProfileRequestImpl.fromJson;

  @override
  String? get fullName;
  @override
  String? get provinceName;
  @override
  String? get phoneNumber;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$EditProfileRequestImplCopyWith<_$EditProfileRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
