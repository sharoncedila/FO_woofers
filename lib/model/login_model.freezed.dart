// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseLoginModel _$ResponseLoginModelFromJson(Map<String, dynamic> json) {
  return _ResponseLoginModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseLoginModel {
  String get accountId => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseLoginModelCopyWith<ResponseLoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseLoginModelCopyWith<$Res> {
  factory $ResponseLoginModelCopyWith(
          ResponseLoginModel value, $Res Function(ResponseLoginModel) then) =
      _$ResponseLoginModelCopyWithImpl<$Res, ResponseLoginModel>;
  @useResult
  $Res call({String accountId, String accessToken});
}

/// @nodoc
class _$ResponseLoginModelCopyWithImpl<$Res, $Val extends ResponseLoginModel>
    implements $ResponseLoginModelCopyWith<$Res> {
  _$ResponseLoginModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseLoginModelImplCopyWith<$Res>
    implements $ResponseLoginModelCopyWith<$Res> {
  factory _$$ResponseLoginModelImplCopyWith(_$ResponseLoginModelImpl value,
          $Res Function(_$ResponseLoginModelImpl) then) =
      __$$ResponseLoginModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accountId, String accessToken});
}

/// @nodoc
class __$$ResponseLoginModelImplCopyWithImpl<$Res>
    extends _$ResponseLoginModelCopyWithImpl<$Res, _$ResponseLoginModelImpl>
    implements _$$ResponseLoginModelImplCopyWith<$Res> {
  __$$ResponseLoginModelImplCopyWithImpl(_$ResponseLoginModelImpl _value,
      $Res Function(_$ResponseLoginModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? accessToken = null,
  }) {
    return _then(_$ResponseLoginModelImpl(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseLoginModelImpl implements _ResponseLoginModel {
  _$ResponseLoginModelImpl(
      {required this.accountId, required this.accessToken});

  factory _$ResponseLoginModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseLoginModelImplFromJson(json);

  @override
  final String accountId;
  @override
  final String accessToken;

  @override
  String toString() {
    return 'ResponseLoginModel(accountId: $accountId, accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseLoginModelImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accountId, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseLoginModelImplCopyWith<_$ResponseLoginModelImpl> get copyWith =>
      __$$ResponseLoginModelImplCopyWithImpl<_$ResponseLoginModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseLoginModelImplToJson(
      this,
    );
  }
}

abstract class _ResponseLoginModel implements ResponseLoginModel {
  factory _ResponseLoginModel(
      {required final String accountId,
      required final String accessToken}) = _$ResponseLoginModelImpl;

  factory _ResponseLoginModel.fromJson(Map<String, dynamic> json) =
      _$ResponseLoginModelImpl.fromJson;

  @override
  String get accountId;
  @override
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$ResponseLoginModelImplCopyWith<_$ResponseLoginModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RequestLoginModel _$RequestLoginModelFromJson(Map<String, dynamic> json) {
  return _RequestLoginModel.fromJson(json);
}

/// @nodoc
mixin _$RequestLoginModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestLoginModelCopyWith<RequestLoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestLoginModelCopyWith<$Res> {
  factory $RequestLoginModelCopyWith(
          RequestLoginModel value, $Res Function(RequestLoginModel) then) =
      _$RequestLoginModelCopyWithImpl<$Res, RequestLoginModel>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$RequestLoginModelCopyWithImpl<$Res, $Val extends RequestLoginModel>
    implements $RequestLoginModelCopyWith<$Res> {
  _$RequestLoginModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestLoginModelImplCopyWith<$Res>
    implements $RequestLoginModelCopyWith<$Res> {
  factory _$$RequestLoginModelImplCopyWith(_$RequestLoginModelImpl value,
          $Res Function(_$RequestLoginModelImpl) then) =
      __$$RequestLoginModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$RequestLoginModelImplCopyWithImpl<$Res>
    extends _$RequestLoginModelCopyWithImpl<$Res, _$RequestLoginModelImpl>
    implements _$$RequestLoginModelImplCopyWith<$Res> {
  __$$RequestLoginModelImplCopyWithImpl(_$RequestLoginModelImpl _value,
      $Res Function(_$RequestLoginModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$RequestLoginModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
class _$RequestLoginModelImpl implements _RequestLoginModel {
  _$RequestLoginModelImpl({required this.email, required this.password});

  factory _$RequestLoginModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestLoginModelImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RequestLoginModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestLoginModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestLoginModelImplCopyWith<_$RequestLoginModelImpl> get copyWith =>
      __$$RequestLoginModelImplCopyWithImpl<_$RequestLoginModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestLoginModelImplToJson(
      this,
    );
  }
}

abstract class _RequestLoginModel implements RequestLoginModel {
  factory _RequestLoginModel(
      {required final String email,
      required final String password}) = _$RequestLoginModelImpl;

  factory _RequestLoginModel.fromJson(Map<String, dynamic> json) =
      _$RequestLoginModelImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$RequestLoginModelImplCopyWith<_$RequestLoginModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
