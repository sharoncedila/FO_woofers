// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseUserProfileModel _$ResponseUserProfileModelFromJson(
    Map<String, dynamic> json) {
  return _ResponseUserProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseUserProfileModel {
  String get username => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get provinceName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseUserProfileModelCopyWith<ResponseUserProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseUserProfileModelCopyWith<$Res> {
  factory $ResponseUserProfileModelCopyWith(ResponseUserProfileModel value,
          $Res Function(ResponseUserProfileModel) then) =
      _$ResponseUserProfileModelCopyWithImpl<$Res, ResponseUserProfileModel>;
  @useResult
  $Res call(
      {String username,
      String fullName,
      String email,
      String provinceName,
      String phoneNumber,
      String description,
      String image});
}

/// @nodoc
class _$ResponseUserProfileModelCopyWithImpl<$Res,
        $Val extends ResponseUserProfileModel>
    implements $ResponseUserProfileModelCopyWith<$Res> {
  _$ResponseUserProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? fullName = null,
    Object? email = null,
    Object? provinceName = null,
    Object? phoneNumber = null,
    Object? description = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      provinceName: null == provinceName
          ? _value.provinceName
          : provinceName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseUserProfileModelImplCopyWith<$Res>
    implements $ResponseUserProfileModelCopyWith<$Res> {
  factory _$$ResponseUserProfileModelImplCopyWith(
          _$ResponseUserProfileModelImpl value,
          $Res Function(_$ResponseUserProfileModelImpl) then) =
      __$$ResponseUserProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String fullName,
      String email,
      String provinceName,
      String phoneNumber,
      String description,
      String image});
}

/// @nodoc
class __$$ResponseUserProfileModelImplCopyWithImpl<$Res>
    extends _$ResponseUserProfileModelCopyWithImpl<$Res,
        _$ResponseUserProfileModelImpl>
    implements _$$ResponseUserProfileModelImplCopyWith<$Res> {
  __$$ResponseUserProfileModelImplCopyWithImpl(
      _$ResponseUserProfileModelImpl _value,
      $Res Function(_$ResponseUserProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? fullName = null,
    Object? email = null,
    Object? provinceName = null,
    Object? phoneNumber = null,
    Object? description = null,
    Object? image = null,
  }) {
    return _then(_$ResponseUserProfileModelImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      provinceName: null == provinceName
          ? _value.provinceName
          : provinceName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseUserProfileModelImpl implements _ResponseUserProfileModel {
  _$ResponseUserProfileModelImpl(
      {required this.username,
      required this.fullName,
      required this.email,
      required this.provinceName,
      required this.phoneNumber,
      required this.description,
      required this.image});

  factory _$ResponseUserProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseUserProfileModelImplFromJson(json);

  @override
  final String username;
  @override
  final String fullName;
  @override
  final String email;
  @override
  final String provinceName;
  @override
  final String phoneNumber;
  @override
  final String description;
  @override
  final String image;

  @override
  String toString() {
    return 'ResponseUserProfileModel(username: $username, fullName: $fullName, email: $email, provinceName: $provinceName, phoneNumber: $phoneNumber, description: $description, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseUserProfileModelImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.provinceName, provinceName) ||
                other.provinceName == provinceName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, fullName, email,
      provinceName, phoneNumber, description, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseUserProfileModelImplCopyWith<_$ResponseUserProfileModelImpl>
      get copyWith => __$$ResponseUserProfileModelImplCopyWithImpl<
          _$ResponseUserProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseUserProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ResponseUserProfileModel implements ResponseUserProfileModel {
  factory _ResponseUserProfileModel(
      {required final String username,
      required final String fullName,
      required final String email,
      required final String provinceName,
      required final String phoneNumber,
      required final String description,
      required final String image}) = _$ResponseUserProfileModelImpl;

  factory _ResponseUserProfileModel.fromJson(Map<String, dynamic> json) =
      _$ResponseUserProfileModelImpl.fromJson;

  @override
  String get username;
  @override
  String get fullName;
  @override
  String get email;
  @override
  String get provinceName;
  @override
  String get phoneNumber;
  @override
  String get description;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$ResponseUserProfileModelImplCopyWith<_$ResponseUserProfileModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
