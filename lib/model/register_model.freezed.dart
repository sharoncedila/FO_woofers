// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseRegisterModel _$ResponseRegisterModelFromJson(
    Map<String, dynamic> json) {
  return _ResponseRegisterModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseRegisterModel {
  String? get username => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get provinceName => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get accountId => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseRegisterModelCopyWith<ResponseRegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseRegisterModelCopyWith<$Res> {
  factory $ResponseRegisterModelCopyWith(ResponseRegisterModel value,
          $Res Function(ResponseRegisterModel) then) =
      _$ResponseRegisterModelCopyWithImpl<$Res, ResponseRegisterModel>;
  @useResult
  $Res call(
      {String? username,
      String? fullname,
      String? email,
      String? provinceName,
      String? phoneNumber,
      String? accountId,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class _$ResponseRegisterModelCopyWithImpl<$Res,
        $Val extends ResponseRegisterModel>
    implements $ResponseRegisterModelCopyWith<$Res> {
  _$ResponseRegisterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? fullname = freezed,
    Object? email = freezed,
    Object? provinceName = freezed,
    Object? phoneNumber = freezed,
    Object? accountId = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceName: freezed == provinceName
          ? _value.provinceName
          : provinceName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ResponseRegisterModelImplCopyWith<$Res>
    implements $ResponseRegisterModelCopyWith<$Res> {
  factory _$$ResponseRegisterModelImplCopyWith(
          _$ResponseRegisterModelImpl value,
          $Res Function(_$ResponseRegisterModelImpl) then) =
      __$$ResponseRegisterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? username,
      String? fullname,
      String? email,
      String? provinceName,
      String? phoneNumber,
      String? accountId,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class __$$ResponseRegisterModelImplCopyWithImpl<$Res>
    extends _$ResponseRegisterModelCopyWithImpl<$Res,
        _$ResponseRegisterModelImpl>
    implements _$$ResponseRegisterModelImplCopyWith<$Res> {
  __$$ResponseRegisterModelImplCopyWithImpl(_$ResponseRegisterModelImpl _value,
      $Res Function(_$ResponseRegisterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? fullname = freezed,
    Object? email = freezed,
    Object? provinceName = freezed,
    Object? phoneNumber = freezed,
    Object? accountId = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ResponseRegisterModelImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceName: freezed == provinceName
          ? _value.provinceName
          : provinceName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
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
class _$ResponseRegisterModelImpl implements _ResponseRegisterModel {
  _$ResponseRegisterModelImpl(
      {required this.username,
      required this.fullname,
      required this.email,
      required this.provinceName,
      required this.phoneNumber,
      required this.accountId,
      required this.errorCode,
      required this.errorMessage});

  factory _$ResponseRegisterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseRegisterModelImplFromJson(json);

  @override
  final String? username;
  @override
  final String? fullname;
  @override
  final String? email;
  @override
  final String? provinceName;
  @override
  final String? phoneNumber;
  @override
  final String? accountId;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ResponseRegisterModel(username: $username, fullname: $fullname, email: $email, provinceName: $provinceName, phoneNumber: $phoneNumber, accountId: $accountId, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseRegisterModelImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.provinceName, provinceName) ||
                other.provinceName == provinceName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, fullname, email,
      provinceName, phoneNumber, accountId, errorCode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseRegisterModelImplCopyWith<_$ResponseRegisterModelImpl>
      get copyWith => __$$ResponseRegisterModelImplCopyWithImpl<
          _$ResponseRegisterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseRegisterModelImplToJson(
      this,
    );
  }
}

abstract class _ResponseRegisterModel implements ResponseRegisterModel {
  factory _ResponseRegisterModel(
      {required final String? username,
      required final String? fullname,
      required final String? email,
      required final String? provinceName,
      required final String? phoneNumber,
      required final String? accountId,
      required final String? errorCode,
      required final String? errorMessage}) = _$ResponseRegisterModelImpl;

  factory _ResponseRegisterModel.fromJson(Map<String, dynamic> json) =
      _$ResponseRegisterModelImpl.fromJson;

  @override
  String? get username;
  @override
  String? get fullname;
  @override
  String? get email;
  @override
  String? get provinceName;
  @override
  String? get phoneNumber;
  @override
  String? get accountId;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ResponseRegisterModelImplCopyWith<_$ResponseRegisterModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RequestRegisterModel _$RequestRegisterModelFromJson(Map<String, dynamic> json) {
  return _RequestRegisterModel.fromJson(json);
}

/// @nodoc
mixin _$RequestRegisterModel {
  String get username => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get provinceName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestRegisterModelCopyWith<RequestRegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestRegisterModelCopyWith<$Res> {
  factory $RequestRegisterModelCopyWith(RequestRegisterModel value,
          $Res Function(RequestRegisterModel) then) =
      _$RequestRegisterModelCopyWithImpl<$Res, RequestRegisterModel>;
  @useResult
  $Res call(
      {String username,
      String? fullname,
      String email,
      String provinceName,
      String phoneNumber,
      String password});
}

/// @nodoc
class _$RequestRegisterModelCopyWithImpl<$Res,
        $Val extends RequestRegisterModel>
    implements $RequestRegisterModelCopyWith<$Res> {
  _$RequestRegisterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? fullname = freezed,
    Object? email = null,
    Object? provinceName = null,
    Object? phoneNumber = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
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
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestRegisterModelImplCopyWith<$Res>
    implements $RequestRegisterModelCopyWith<$Res> {
  factory _$$RequestRegisterModelImplCopyWith(_$RequestRegisterModelImpl value,
          $Res Function(_$RequestRegisterModelImpl) then) =
      __$$RequestRegisterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String? fullname,
      String email,
      String provinceName,
      String phoneNumber,
      String password});
}

/// @nodoc
class __$$RequestRegisterModelImplCopyWithImpl<$Res>
    extends _$RequestRegisterModelCopyWithImpl<$Res, _$RequestRegisterModelImpl>
    implements _$$RequestRegisterModelImplCopyWith<$Res> {
  __$$RequestRegisterModelImplCopyWithImpl(_$RequestRegisterModelImpl _value,
      $Res Function(_$RequestRegisterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? fullname = freezed,
    Object? email = null,
    Object? provinceName = null,
    Object? phoneNumber = null,
    Object? password = null,
  }) {
    return _then(_$RequestRegisterModelImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
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
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestRegisterModelImpl implements _RequestRegisterModel {
  _$RequestRegisterModelImpl(
      {required this.username,
      required this.fullname,
      required this.email,
      required this.provinceName,
      required this.phoneNumber,
      required this.password});

  factory _$RequestRegisterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestRegisterModelImplFromJson(json);

  @override
  final String username;
  @override
  final String? fullname;
  @override
  final String email;
  @override
  final String provinceName;
  @override
  final String phoneNumber;
  @override
  final String password;

  @override
  String toString() {
    return 'RequestRegisterModel(username: $username, fullname: $fullname, email: $email, provinceName: $provinceName, phoneNumber: $phoneNumber, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestRegisterModelImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.provinceName, provinceName) ||
                other.provinceName == provinceName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, fullname, email,
      provinceName, phoneNumber, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestRegisterModelImplCopyWith<_$RequestRegisterModelImpl>
      get copyWith =>
          __$$RequestRegisterModelImplCopyWithImpl<_$RequestRegisterModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestRegisterModelImplToJson(
      this,
    );
  }
}

abstract class _RequestRegisterModel implements RequestRegisterModel {
  factory _RequestRegisterModel(
      {required final String username,
      required final String? fullname,
      required final String email,
      required final String provinceName,
      required final String phoneNumber,
      required final String password}) = _$RequestRegisterModelImpl;

  factory _RequestRegisterModel.fromJson(Map<String, dynamic> json) =
      _$RequestRegisterModelImpl.fromJson;

  @override
  String get username;
  @override
  String? get fullname;
  @override
  String get email;
  @override
  String get provinceName;
  @override
  String get phoneNumber;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$RequestRegisterModelImplCopyWith<_$RequestRegisterModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
