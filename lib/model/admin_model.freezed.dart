// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
mixin _$Account {
  String? get accountId => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call({String? accountId, String? username, String? image});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
    Object? username = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountImplCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$AccountImplCopyWith(
          _$AccountImpl value, $Res Function(_$AccountImpl) then) =
      __$$AccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? accountId, String? username, String? image});
}

/// @nodoc
class __$$AccountImplCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$AccountImpl>
    implements _$$AccountImplCopyWith<$Res> {
  __$$AccountImplCopyWithImpl(
      _$AccountImpl _value, $Res Function(_$AccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
    Object? username = freezed,
    Object? image = freezed,
  }) {
    return _then(_$AccountImpl(
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountImpl implements _Account {
  _$AccountImpl(
      {required this.accountId, required this.username, required this.image});

  factory _$AccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountImplFromJson(json);

  @override
  final String? accountId;
  @override
  final String? username;
  @override
  final String? image;

  @override
  String toString() {
    return 'Account(accountId: $accountId, username: $username, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accountId, username, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      __$$AccountImplCopyWithImpl<_$AccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountImplToJson(
      this,
    );
  }
}

abstract class _Account implements Account {
  factory _Account(
      {required final String? accountId,
      required final String? username,
      required final String? image}) = _$AccountImpl;

  factory _Account.fromJson(Map<String, dynamic> json) = _$AccountImpl.fromJson;

  @override
  String? get accountId;
  @override
  String? get username;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminLoginRequest _$AdminLoginRequestFromJson(Map<String, dynamic> json) {
  return _AdminLoginRequest.fromJson(json);
}

/// @nodoc
mixin _$AdminLoginRequest {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminLoginRequestCopyWith<AdminLoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminLoginRequestCopyWith<$Res> {
  factory $AdminLoginRequestCopyWith(
          AdminLoginRequest value, $Res Function(AdminLoginRequest) then) =
      _$AdminLoginRequestCopyWithImpl<$Res, AdminLoginRequest>;
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class _$AdminLoginRequestCopyWithImpl<$Res, $Val extends AdminLoginRequest>
    implements $AdminLoginRequestCopyWith<$Res> {
  _$AdminLoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminLoginRequestImplCopyWith<$Res>
    implements $AdminLoginRequestCopyWith<$Res> {
  factory _$$AdminLoginRequestImplCopyWith(_$AdminLoginRequestImpl value,
          $Res Function(_$AdminLoginRequestImpl) then) =
      __$$AdminLoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class __$$AdminLoginRequestImplCopyWithImpl<$Res>
    extends _$AdminLoginRequestCopyWithImpl<$Res, _$AdminLoginRequestImpl>
    implements _$$AdminLoginRequestImplCopyWith<$Res> {
  __$$AdminLoginRequestImplCopyWithImpl(_$AdminLoginRequestImpl _value,
      $Res Function(_$AdminLoginRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$AdminLoginRequestImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminLoginRequestImpl implements _AdminLoginRequest {
  _$AdminLoginRequestImpl({required this.email, required this.password});

  factory _$AdminLoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminLoginRequestImplFromJson(json);

  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'AdminLoginRequest(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminLoginRequestImpl &&
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
  _$$AdminLoginRequestImplCopyWith<_$AdminLoginRequestImpl> get copyWith =>
      __$$AdminLoginRequestImplCopyWithImpl<_$AdminLoginRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminLoginRequestImplToJson(
      this,
    );
  }
}

abstract class _AdminLoginRequest implements AdminLoginRequest {
  factory _AdminLoginRequest(
      {required final String? email,
      required final String? password}) = _$AdminLoginRequestImpl;

  factory _AdminLoginRequest.fromJson(Map<String, dynamic> json) =
      _$AdminLoginRequestImpl.fromJson;

  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$AdminLoginRequestImplCopyWith<_$AdminLoginRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminLoginResponse _$AdminLoginResponseFromJson(Map<String, dynamic> json) {
  return _AdminLoginResponse.fromJson(json);
}

/// @nodoc
mixin _$AdminLoginResponse {
  String? get accountId => throw _privateConstructorUsedError;
  String? get accessToken => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminLoginResponseCopyWith<AdminLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminLoginResponseCopyWith<$Res> {
  factory $AdminLoginResponseCopyWith(
          AdminLoginResponse value, $Res Function(AdminLoginResponse) then) =
      _$AdminLoginResponseCopyWithImpl<$Res, AdminLoginResponse>;
  @useResult
  $Res call(
      {String? accountId,
      String? accessToken,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class _$AdminLoginResponseCopyWithImpl<$Res, $Val extends AdminLoginResponse>
    implements $AdminLoginResponseCopyWith<$Res> {
  _$AdminLoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
    Object? accessToken = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AdminLoginResponseImplCopyWith<$Res>
    implements $AdminLoginResponseCopyWith<$Res> {
  factory _$$AdminLoginResponseImplCopyWith(_$AdminLoginResponseImpl value,
          $Res Function(_$AdminLoginResponseImpl) then) =
      __$$AdminLoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? accountId,
      String? accessToken,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class __$$AdminLoginResponseImplCopyWithImpl<$Res>
    extends _$AdminLoginResponseCopyWithImpl<$Res, _$AdminLoginResponseImpl>
    implements _$$AdminLoginResponseImplCopyWith<$Res> {
  __$$AdminLoginResponseImplCopyWithImpl(_$AdminLoginResponseImpl _value,
      $Res Function(_$AdminLoginResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
    Object? accessToken = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AdminLoginResponseImpl(
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
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
class _$AdminLoginResponseImpl implements _AdminLoginResponse {
  _$AdminLoginResponseImpl(
      {required this.accountId,
      required this.accessToken,
      required this.errorCode,
      required this.errorMessage});

  factory _$AdminLoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminLoginResponseImplFromJson(json);

  @override
  final String? accountId;
  @override
  final String? accessToken;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AdminLoginResponse(accountId: $accountId, accessToken: $accessToken, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminLoginResponseImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accountId, accessToken, errorCode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminLoginResponseImplCopyWith<_$AdminLoginResponseImpl> get copyWith =>
      __$$AdminLoginResponseImplCopyWithImpl<_$AdminLoginResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminLoginResponseImplToJson(
      this,
    );
  }
}

abstract class _AdminLoginResponse implements AdminLoginResponse {
  factory _AdminLoginResponse(
      {required final String? accountId,
      required final String? accessToken,
      required final String? errorCode,
      required final String? errorMessage}) = _$AdminLoginResponseImpl;

  factory _AdminLoginResponse.fromJson(Map<String, dynamic> json) =
      _$AdminLoginResponseImpl.fromJson;

  @override
  String? get accountId;
  @override
  String? get accessToken;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AdminLoginResponseImplCopyWith<_$AdminLoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminDeleteAccountResponse _$AdminDeleteAccountResponseFromJson(
    Map<String, dynamic> json) {
  return _AdminDeleteAccountResponse.fromJson(json);
}

/// @nodoc
mixin _$AdminDeleteAccountResponse {
  String? get status => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminDeleteAccountResponseCopyWith<AdminDeleteAccountResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminDeleteAccountResponseCopyWith<$Res> {
  factory $AdminDeleteAccountResponseCopyWith(AdminDeleteAccountResponse value,
          $Res Function(AdminDeleteAccountResponse) then) =
      _$AdminDeleteAccountResponseCopyWithImpl<$Res,
          AdminDeleteAccountResponse>;
  @useResult
  $Res call({String? status, String? errorCode, String? errorMessage});
}

/// @nodoc
class _$AdminDeleteAccountResponseCopyWithImpl<$Res,
        $Val extends AdminDeleteAccountResponse>
    implements $AdminDeleteAccountResponseCopyWith<$Res> {
  _$AdminDeleteAccountResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AdminDeleteAccountResponseImplCopyWith<$Res>
    implements $AdminDeleteAccountResponseCopyWith<$Res> {
  factory _$$AdminDeleteAccountResponseImplCopyWith(
          _$AdminDeleteAccountResponseImpl value,
          $Res Function(_$AdminDeleteAccountResponseImpl) then) =
      __$$AdminDeleteAccountResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? errorCode, String? errorMessage});
}

/// @nodoc
class __$$AdminDeleteAccountResponseImplCopyWithImpl<$Res>
    extends _$AdminDeleteAccountResponseCopyWithImpl<$Res,
        _$AdminDeleteAccountResponseImpl>
    implements _$$AdminDeleteAccountResponseImplCopyWith<$Res> {
  __$$AdminDeleteAccountResponseImplCopyWithImpl(
      _$AdminDeleteAccountResponseImpl _value,
      $Res Function(_$AdminDeleteAccountResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AdminDeleteAccountResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$AdminDeleteAccountResponseImpl implements _AdminDeleteAccountResponse {
  _$AdminDeleteAccountResponseImpl(
      {required this.status,
      required this.errorCode,
      required this.errorMessage});

  factory _$AdminDeleteAccountResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AdminDeleteAccountResponseImplFromJson(json);

  @override
  final String? status;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AdminDeleteAccountResponse(status: $status, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminDeleteAccountResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, errorCode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminDeleteAccountResponseImplCopyWith<_$AdminDeleteAccountResponseImpl>
      get copyWith => __$$AdminDeleteAccountResponseImplCopyWithImpl<
          _$AdminDeleteAccountResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminDeleteAccountResponseImplToJson(
      this,
    );
  }
}

abstract class _AdminDeleteAccountResponse
    implements AdminDeleteAccountResponse {
  factory _AdminDeleteAccountResponse(
      {required final String? status,
      required final String? errorCode,
      required final String? errorMessage}) = _$AdminDeleteAccountResponseImpl;

  factory _AdminDeleteAccountResponse.fromJson(Map<String, dynamic> json) =
      _$AdminDeleteAccountResponseImpl.fromJson;

  @override
  String? get status;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AdminDeleteAccountResponseImplCopyWith<_$AdminDeleteAccountResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AdminDeleteDogResponse _$AdminDeleteDogResponseFromJson(
    Map<String, dynamic> json) {
  return _AdminDeleteDogResponse.fromJson(json);
}

/// @nodoc
mixin _$AdminDeleteDogResponse {
  String? get status => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminDeleteDogResponseCopyWith<AdminDeleteDogResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminDeleteDogResponseCopyWith<$Res> {
  factory $AdminDeleteDogResponseCopyWith(AdminDeleteDogResponse value,
          $Res Function(AdminDeleteDogResponse) then) =
      _$AdminDeleteDogResponseCopyWithImpl<$Res, AdminDeleteDogResponse>;
  @useResult
  $Res call({String? status, String? errorCode, String? errorMessage});
}

/// @nodoc
class _$AdminDeleteDogResponseCopyWithImpl<$Res,
        $Val extends AdminDeleteDogResponse>
    implements $AdminDeleteDogResponseCopyWith<$Res> {
  _$AdminDeleteDogResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AdminDeleteDogResponseImplCopyWith<$Res>
    implements $AdminDeleteDogResponseCopyWith<$Res> {
  factory _$$AdminDeleteDogResponseImplCopyWith(
          _$AdminDeleteDogResponseImpl value,
          $Res Function(_$AdminDeleteDogResponseImpl) then) =
      __$$AdminDeleteDogResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? errorCode, String? errorMessage});
}

/// @nodoc
class __$$AdminDeleteDogResponseImplCopyWithImpl<$Res>
    extends _$AdminDeleteDogResponseCopyWithImpl<$Res,
        _$AdminDeleteDogResponseImpl>
    implements _$$AdminDeleteDogResponseImplCopyWith<$Res> {
  __$$AdminDeleteDogResponseImplCopyWithImpl(
      _$AdminDeleteDogResponseImpl _value,
      $Res Function(_$AdminDeleteDogResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AdminDeleteDogResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$AdminDeleteDogResponseImpl implements _AdminDeleteDogResponse {
  _$AdminDeleteDogResponseImpl(
      {required this.status,
      required this.errorCode,
      required this.errorMessage});

  factory _$AdminDeleteDogResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminDeleteDogResponseImplFromJson(json);

  @override
  final String? status;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AdminDeleteDogResponse(status: $status, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminDeleteDogResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, errorCode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminDeleteDogResponseImplCopyWith<_$AdminDeleteDogResponseImpl>
      get copyWith => __$$AdminDeleteDogResponseImplCopyWithImpl<
          _$AdminDeleteDogResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminDeleteDogResponseImplToJson(
      this,
    );
  }
}

abstract class _AdminDeleteDogResponse implements AdminDeleteDogResponse {
  factory _AdminDeleteDogResponse(
      {required final String? status,
      required final String? errorCode,
      required final String? errorMessage}) = _$AdminDeleteDogResponseImpl;

  factory _AdminDeleteDogResponse.fromJson(Map<String, dynamic> json) =
      _$AdminDeleteDogResponseImpl.fromJson;

  @override
  String? get status;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AdminDeleteDogResponseImplCopyWith<_$AdminDeleteDogResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AdminDeleteFeedsResponse _$AdminDeleteFeedsResponseFromJson(
    Map<String, dynamic> json) {
  return _AdminDeleteFeedsResponse.fromJson(json);
}

/// @nodoc
mixin _$AdminDeleteFeedsResponse {
  String? get status => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminDeleteFeedsResponseCopyWith<AdminDeleteFeedsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminDeleteFeedsResponseCopyWith<$Res> {
  factory $AdminDeleteFeedsResponseCopyWith(AdminDeleteFeedsResponse value,
          $Res Function(AdminDeleteFeedsResponse) then) =
      _$AdminDeleteFeedsResponseCopyWithImpl<$Res, AdminDeleteFeedsResponse>;
  @useResult
  $Res call({String? status, String? errorCode, String? errorMessage});
}

/// @nodoc
class _$AdminDeleteFeedsResponseCopyWithImpl<$Res,
        $Val extends AdminDeleteFeedsResponse>
    implements $AdminDeleteFeedsResponseCopyWith<$Res> {
  _$AdminDeleteFeedsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AdminDeleteFeedsResponseImplCopyWith<$Res>
    implements $AdminDeleteFeedsResponseCopyWith<$Res> {
  factory _$$AdminDeleteFeedsResponseImplCopyWith(
          _$AdminDeleteFeedsResponseImpl value,
          $Res Function(_$AdminDeleteFeedsResponseImpl) then) =
      __$$AdminDeleteFeedsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? errorCode, String? errorMessage});
}

/// @nodoc
class __$$AdminDeleteFeedsResponseImplCopyWithImpl<$Res>
    extends _$AdminDeleteFeedsResponseCopyWithImpl<$Res,
        _$AdminDeleteFeedsResponseImpl>
    implements _$$AdminDeleteFeedsResponseImplCopyWith<$Res> {
  __$$AdminDeleteFeedsResponseImplCopyWithImpl(
      _$AdminDeleteFeedsResponseImpl _value,
      $Res Function(_$AdminDeleteFeedsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AdminDeleteFeedsResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$AdminDeleteFeedsResponseImpl implements _AdminDeleteFeedsResponse {
  _$AdminDeleteFeedsResponseImpl(
      {required this.status,
      required this.errorCode,
      required this.errorMessage});

  factory _$AdminDeleteFeedsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminDeleteFeedsResponseImplFromJson(json);

  @override
  final String? status;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AdminDeleteFeedsResponse(status: $status, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminDeleteFeedsResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, errorCode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminDeleteFeedsResponseImplCopyWith<_$AdminDeleteFeedsResponseImpl>
      get copyWith => __$$AdminDeleteFeedsResponseImplCopyWithImpl<
          _$AdminDeleteFeedsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminDeleteFeedsResponseImplToJson(
      this,
    );
  }
}

abstract class _AdminDeleteFeedsResponse implements AdminDeleteFeedsResponse {
  factory _AdminDeleteFeedsResponse(
      {required final String? status,
      required final String? errorCode,
      required final String? errorMessage}) = _$AdminDeleteFeedsResponseImpl;

  factory _AdminDeleteFeedsResponse.fromJson(Map<String, dynamic> json) =
      _$AdminDeleteFeedsResponseImpl.fromJson;

  @override
  String? get status;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AdminDeleteFeedsResponseImplCopyWith<_$AdminDeleteFeedsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ShowAccountsResponse _$ShowAccountsResponseFromJson(Map<String, dynamic> json) {
  return _ShowAccountsResponse.fromJson(json);
}

/// @nodoc
mixin _$ShowAccountsResponse {
  String? get status => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get accountId => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowAccountsResponseCopyWith<ShowAccountsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowAccountsResponseCopyWith<$Res> {
  factory $ShowAccountsResponseCopyWith(ShowAccountsResponse value,
          $Res Function(ShowAccountsResponse) then) =
      _$ShowAccountsResponseCopyWithImpl<$Res, ShowAccountsResponse>;
  @useResult
  $Res call(
      {String? status,
      String? errorCode,
      String? errorMessage,
      String? accountId,
      String? username,
      String? image});
}

/// @nodoc
class _$ShowAccountsResponseCopyWithImpl<$Res,
        $Val extends ShowAccountsResponse>
    implements $ShowAccountsResponseCopyWith<$Res> {
  _$ShowAccountsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
    Object? accountId = freezed,
    Object? username = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowAccountsResponseImplCopyWith<$Res>
    implements $ShowAccountsResponseCopyWith<$Res> {
  factory _$$ShowAccountsResponseImplCopyWith(_$ShowAccountsResponseImpl value,
          $Res Function(_$ShowAccountsResponseImpl) then) =
      __$$ShowAccountsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      String? errorCode,
      String? errorMessage,
      String? accountId,
      String? username,
      String? image});
}

/// @nodoc
class __$$ShowAccountsResponseImplCopyWithImpl<$Res>
    extends _$ShowAccountsResponseCopyWithImpl<$Res, _$ShowAccountsResponseImpl>
    implements _$$ShowAccountsResponseImplCopyWith<$Res> {
  __$$ShowAccountsResponseImplCopyWithImpl(_$ShowAccountsResponseImpl _value,
      $Res Function(_$ShowAccountsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
    Object? accountId = freezed,
    Object? username = freezed,
    Object? image = freezed,
  }) {
    return _then(_$ShowAccountsResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShowAccountsResponseImpl implements _ShowAccountsResponse {
  _$ShowAccountsResponseImpl(
      {required this.status,
      required this.errorCode,
      required this.errorMessage,
      required this.accountId,
      required this.username,
      required this.image});

  factory _$ShowAccountsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShowAccountsResponseImplFromJson(json);

  @override
  final String? status;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;
  @override
  final String? accountId;
  @override
  final String? username;
  @override
  final String? image;

  @override
  String toString() {
    return 'ShowAccountsResponse(status: $status, errorCode: $errorCode, errorMessage: $errorMessage, accountId: $accountId, username: $username, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowAccountsResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, errorCode, errorMessage, accountId, username, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowAccountsResponseImplCopyWith<_$ShowAccountsResponseImpl>
      get copyWith =>
          __$$ShowAccountsResponseImplCopyWithImpl<_$ShowAccountsResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowAccountsResponseImplToJson(
      this,
    );
  }
}

abstract class _ShowAccountsResponse implements ShowAccountsResponse {
  factory _ShowAccountsResponse(
      {required final String? status,
      required final String? errorCode,
      required final String? errorMessage,
      required final String? accountId,
      required final String? username,
      required final String? image}) = _$ShowAccountsResponseImpl;

  factory _ShowAccountsResponse.fromJson(Map<String, dynamic> json) =
      _$ShowAccountsResponseImpl.fromJson;

  @override
  String? get status;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  String? get accountId;
  @override
  String? get username;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$ShowAccountsResponseImplCopyWith<_$ShowAccountsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Dog _$DogFromJson(Map<String, dynamic> json) {
  return _Dog.fromJson(json);
}

/// @nodoc
mixin _$Dog {
  String? get dogId => throw _privateConstructorUsedError;
  String? get dogName => throw _privateConstructorUsedError;
  String? get dogBreed => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DogCopyWith<Dog> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogCopyWith<$Res> {
  factory $DogCopyWith(Dog value, $Res Function(Dog) then) =
      _$DogCopyWithImpl<$Res, Dog>;
  @useResult
  $Res call({String? dogId, String? dogName, String? dogBreed, String? image});
}

/// @nodoc
class _$DogCopyWithImpl<$Res, $Val extends Dog> implements $DogCopyWith<$Res> {
  _$DogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dogId = freezed,
    Object? dogName = freezed,
    Object? dogBreed = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      dogId: freezed == dogId
          ? _value.dogId
          : dogId // ignore: cast_nullable_to_non_nullable
              as String?,
      dogName: freezed == dogName
          ? _value.dogName
          : dogName // ignore: cast_nullable_to_non_nullable
              as String?,
      dogBreed: freezed == dogBreed
          ? _value.dogBreed
          : dogBreed // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DogImplCopyWith<$Res> implements $DogCopyWith<$Res> {
  factory _$$DogImplCopyWith(_$DogImpl value, $Res Function(_$DogImpl) then) =
      __$$DogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? dogId, String? dogName, String? dogBreed, String? image});
}

/// @nodoc
class __$$DogImplCopyWithImpl<$Res> extends _$DogCopyWithImpl<$Res, _$DogImpl>
    implements _$$DogImplCopyWith<$Res> {
  __$$DogImplCopyWithImpl(_$DogImpl _value, $Res Function(_$DogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dogId = freezed,
    Object? dogName = freezed,
    Object? dogBreed = freezed,
    Object? image = freezed,
  }) {
    return _then(_$DogImpl(
      dogId: freezed == dogId
          ? _value.dogId
          : dogId // ignore: cast_nullable_to_non_nullable
              as String?,
      dogName: freezed == dogName
          ? _value.dogName
          : dogName // ignore: cast_nullable_to_non_nullable
              as String?,
      dogBreed: freezed == dogBreed
          ? _value.dogBreed
          : dogBreed // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DogImpl implements _Dog {
  _$DogImpl(
      {required this.dogId,
      required this.dogName,
      required this.dogBreed,
      this.image});

  factory _$DogImpl.fromJson(Map<String, dynamic> json) =>
      _$$DogImplFromJson(json);

  @override
  final String? dogId;
  @override
  final String? dogName;
  @override
  final String? dogBreed;
  @override
  final String? image;

  @override
  String toString() {
    return 'Dog(dogId: $dogId, dogName: $dogName, dogBreed: $dogBreed, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DogImpl &&
            (identical(other.dogId, dogId) || other.dogId == dogId) &&
            (identical(other.dogName, dogName) || other.dogName == dogName) &&
            (identical(other.dogBreed, dogBreed) ||
                other.dogBreed == dogBreed) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dogId, dogName, dogBreed, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DogImplCopyWith<_$DogImpl> get copyWith =>
      __$$DogImplCopyWithImpl<_$DogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DogImplToJson(
      this,
    );
  }
}

abstract class _Dog implements Dog {
  factory _Dog(
      {required final String? dogId,
      required final String? dogName,
      required final String? dogBreed,
      final String? image}) = _$DogImpl;

  factory _Dog.fromJson(Map<String, dynamic> json) = _$DogImpl.fromJson;

  @override
  String? get dogId;
  @override
  String? get dogName;
  @override
  String? get dogBreed;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$DogImplCopyWith<_$DogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShowDogsResponse _$ShowDogsResponseFromJson(Map<String, dynamic> json) {
  return _ShowDogsResponse.fromJson(json);
}

/// @nodoc
mixin _$ShowDogsResponse {
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get dogId => throw _privateConstructorUsedError;
  String? get dogName => throw _privateConstructorUsedError;
  String? get dogBreed => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowDogsResponseCopyWith<ShowDogsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowDogsResponseCopyWith<$Res> {
  factory $ShowDogsResponseCopyWith(
          ShowDogsResponse value, $Res Function(ShowDogsResponse) then) =
      _$ShowDogsResponseCopyWithImpl<$Res, ShowDogsResponse>;
  @useResult
  $Res call(
      {String? errorCode,
      String? errorMessage,
      String? dogId,
      String? dogName,
      String? dogBreed,
      String? image});
}

/// @nodoc
class _$ShowDogsResponseCopyWithImpl<$Res, $Val extends ShowDogsResponse>
    implements $ShowDogsResponseCopyWith<$Res> {
  _$ShowDogsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
    Object? dogId = freezed,
    Object? dogName = freezed,
    Object? dogBreed = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      dogId: freezed == dogId
          ? _value.dogId
          : dogId // ignore: cast_nullable_to_non_nullable
              as String?,
      dogName: freezed == dogName
          ? _value.dogName
          : dogName // ignore: cast_nullable_to_non_nullable
              as String?,
      dogBreed: freezed == dogBreed
          ? _value.dogBreed
          : dogBreed // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowDogsResponseImplCopyWith<$Res>
    implements $ShowDogsResponseCopyWith<$Res> {
  factory _$$ShowDogsResponseImplCopyWith(_$ShowDogsResponseImpl value,
          $Res Function(_$ShowDogsResponseImpl) then) =
      __$$ShowDogsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorCode,
      String? errorMessage,
      String? dogId,
      String? dogName,
      String? dogBreed,
      String? image});
}

/// @nodoc
class __$$ShowDogsResponseImplCopyWithImpl<$Res>
    extends _$ShowDogsResponseCopyWithImpl<$Res, _$ShowDogsResponseImpl>
    implements _$$ShowDogsResponseImplCopyWith<$Res> {
  __$$ShowDogsResponseImplCopyWithImpl(_$ShowDogsResponseImpl _value,
      $Res Function(_$ShowDogsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
    Object? dogId = freezed,
    Object? dogName = freezed,
    Object? dogBreed = freezed,
    Object? image = freezed,
  }) {
    return _then(_$ShowDogsResponseImpl(
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      dogId: freezed == dogId
          ? _value.dogId
          : dogId // ignore: cast_nullable_to_non_nullable
              as String?,
      dogName: freezed == dogName
          ? _value.dogName
          : dogName // ignore: cast_nullable_to_non_nullable
              as String?,
      dogBreed: freezed == dogBreed
          ? _value.dogBreed
          : dogBreed // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShowDogsResponseImpl implements _ShowDogsResponse {
  _$ShowDogsResponseImpl(
      {required this.errorCode,
      required this.errorMessage,
      required this.dogId,
      required this.dogName,
      required this.dogBreed,
      this.image});

  factory _$ShowDogsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShowDogsResponseImplFromJson(json);

  @override
  final String? errorCode;
  @override
  final String? errorMessage;
  @override
  final String? dogId;
  @override
  final String? dogName;
  @override
  final String? dogBreed;
  @override
  final String? image;

  @override
  String toString() {
    return 'ShowDogsResponse(errorCode: $errorCode, errorMessage: $errorMessage, dogId: $dogId, dogName: $dogName, dogBreed: $dogBreed, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowDogsResponseImpl &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.dogId, dogId) || other.dogId == dogId) &&
            (identical(other.dogName, dogName) || other.dogName == dogName) &&
            (identical(other.dogBreed, dogBreed) ||
                other.dogBreed == dogBreed) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, errorCode, errorMessage, dogId, dogName, dogBreed, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowDogsResponseImplCopyWith<_$ShowDogsResponseImpl> get copyWith =>
      __$$ShowDogsResponseImplCopyWithImpl<_$ShowDogsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowDogsResponseImplToJson(
      this,
    );
  }
}

abstract class _ShowDogsResponse implements ShowDogsResponse {
  factory _ShowDogsResponse(
      {required final String? errorCode,
      required final String? errorMessage,
      required final String? dogId,
      required final String? dogName,
      required final String? dogBreed,
      final String? image}) = _$ShowDogsResponseImpl;

  factory _ShowDogsResponse.fromJson(Map<String, dynamic> json) =
      _$ShowDogsResponseImpl.fromJson;

  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  String? get dogId;
  @override
  String? get dogName;
  @override
  String? get dogBreed;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$ShowDogsResponseImplCopyWith<_$ShowDogsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Feeds _$FeedsFromJson(Map<String, dynamic> json) {
  return _Feeds.fromJson(json);
}

/// @nodoc
mixin _$Feeds {
  String? get username => throw _privateConstructorUsedError;
  String? get feedsId => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get postDate => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedsCopyWith<Feeds> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedsCopyWith<$Res> {
  factory $FeedsCopyWith(Feeds value, $Res Function(Feeds) then) =
      _$FeedsCopyWithImpl<$Res, Feeds>;
  @useResult
  $Res call(
      {String? username,
      String? feedsId,
      String? caption,
      String? image,
      String? postDate,
      String? errorCode,
      String? errorMessage,
      String? profilePicture});
}

/// @nodoc
class _$FeedsCopyWithImpl<$Res, $Val extends Feeds>
    implements $FeedsCopyWith<$Res> {
  _$FeedsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? feedsId = freezed,
    Object? caption = freezed,
    Object? image = freezed,
    Object? postDate = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      feedsId: freezed == feedsId
          ? _value.feedsId
          : feedsId // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      postDate: freezed == postDate
          ? _value.postDate
          : postDate // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedsImplCopyWith<$Res> implements $FeedsCopyWith<$Res> {
  factory _$$FeedsImplCopyWith(
          _$FeedsImpl value, $Res Function(_$FeedsImpl) then) =
      __$$FeedsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? username,
      String? feedsId,
      String? caption,
      String? image,
      String? postDate,
      String? errorCode,
      String? errorMessage,
      String? profilePicture});
}

/// @nodoc
class __$$FeedsImplCopyWithImpl<$Res>
    extends _$FeedsCopyWithImpl<$Res, _$FeedsImpl>
    implements _$$FeedsImplCopyWith<$Res> {
  __$$FeedsImplCopyWithImpl(
      _$FeedsImpl _value, $Res Function(_$FeedsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? feedsId = freezed,
    Object? caption = freezed,
    Object? image = freezed,
    Object? postDate = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(_$FeedsImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      feedsId: freezed == feedsId
          ? _value.feedsId
          : feedsId // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      postDate: freezed == postDate
          ? _value.postDate
          : postDate // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedsImpl implements _Feeds {
  _$FeedsImpl(
      {required this.username,
      required this.feedsId,
      required this.caption,
      required this.image,
      required this.postDate,
      required this.errorCode,
      required this.errorMessage,
      required this.profilePicture});

  factory _$FeedsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedsImplFromJson(json);

  @override
  final String? username;
  @override
  final String? feedsId;
  @override
  final String? caption;
  @override
  final String? image;
  @override
  final String? postDate;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;
  @override
  final String? profilePicture;

  @override
  String toString() {
    return 'Feeds(username: $username, feedsId: $feedsId, caption: $caption, image: $image, postDate: $postDate, errorCode: $errorCode, errorMessage: $errorMessage, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedsImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.feedsId, feedsId) || other.feedsId == feedsId) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.postDate, postDate) ||
                other.postDate == postDate) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, feedsId, caption,
      image, postDate, errorCode, errorMessage, profilePicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedsImplCopyWith<_$FeedsImpl> get copyWith =>
      __$$FeedsImplCopyWithImpl<_$FeedsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedsImplToJson(
      this,
    );
  }
}

abstract class _Feeds implements Feeds {
  factory _Feeds(
      {required final String? username,
      required final String? feedsId,
      required final String? caption,
      required final String? image,
      required final String? postDate,
      required final String? errorCode,
      required final String? errorMessage,
      required final String? profilePicture}) = _$FeedsImpl;

  factory _Feeds.fromJson(Map<String, dynamic> json) = _$FeedsImpl.fromJson;

  @override
  String? get username;
  @override
  String? get feedsId;
  @override
  String? get caption;
  @override
  String? get image;
  @override
  String? get postDate;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  String? get profilePicture;
  @override
  @JsonKey(ignore: true)
  _$$FeedsImplCopyWith<_$FeedsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShowFeedsResponse _$ShowFeedsResponseFromJson(Map<String, dynamic> json) {
  return _ShowFeedsResponse.fromJson(json);
}

/// @nodoc
mixin _$ShowFeedsResponse {
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get feedsId => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get postDate => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowFeedsResponseCopyWith<ShowFeedsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowFeedsResponseCopyWith<$Res> {
  factory $ShowFeedsResponseCopyWith(
          ShowFeedsResponse value, $Res Function(ShowFeedsResponse) then) =
      _$ShowFeedsResponseCopyWithImpl<$Res, ShowFeedsResponse>;
  @useResult
  $Res call(
      {String? errorCode,
      String? errorMessage,
      String? username,
      String? feedsId,
      String? caption,
      String? image,
      String? postDate,
      String? profilePicture});
}

/// @nodoc
class _$ShowFeedsResponseCopyWithImpl<$Res, $Val extends ShowFeedsResponse>
    implements $ShowFeedsResponseCopyWith<$Res> {
  _$ShowFeedsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
    Object? username = freezed,
    Object? feedsId = freezed,
    Object? caption = freezed,
    Object? image = freezed,
    Object? postDate = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(_value.copyWith(
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      feedsId: freezed == feedsId
          ? _value.feedsId
          : feedsId // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      postDate: freezed == postDate
          ? _value.postDate
          : postDate // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowFeedsResponseImplCopyWith<$Res>
    implements $ShowFeedsResponseCopyWith<$Res> {
  factory _$$ShowFeedsResponseImplCopyWith(_$ShowFeedsResponseImpl value,
          $Res Function(_$ShowFeedsResponseImpl) then) =
      __$$ShowFeedsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorCode,
      String? errorMessage,
      String? username,
      String? feedsId,
      String? caption,
      String? image,
      String? postDate,
      String? profilePicture});
}

/// @nodoc
class __$$ShowFeedsResponseImplCopyWithImpl<$Res>
    extends _$ShowFeedsResponseCopyWithImpl<$Res, _$ShowFeedsResponseImpl>
    implements _$$ShowFeedsResponseImplCopyWith<$Res> {
  __$$ShowFeedsResponseImplCopyWithImpl(_$ShowFeedsResponseImpl _value,
      $Res Function(_$ShowFeedsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
    Object? username = freezed,
    Object? feedsId = freezed,
    Object? caption = freezed,
    Object? image = freezed,
    Object? postDate = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(_$ShowFeedsResponseImpl(
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      feedsId: freezed == feedsId
          ? _value.feedsId
          : feedsId // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      postDate: freezed == postDate
          ? _value.postDate
          : postDate // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShowFeedsResponseImpl implements _ShowFeedsResponse {
  _$ShowFeedsResponseImpl(
      {required this.errorCode,
      required this.errorMessage,
      required this.username,
      required this.feedsId,
      required this.caption,
      required this.image,
      required this.postDate,
      required this.profilePicture});

  factory _$ShowFeedsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShowFeedsResponseImplFromJson(json);

  @override
  final String? errorCode;
  @override
  final String? errorMessage;
  @override
  final String? username;
  @override
  final String? feedsId;
  @override
  final String? caption;
  @override
  final String? image;
  @override
  final String? postDate;
  @override
  final String? profilePicture;

  @override
  String toString() {
    return 'ShowFeedsResponse(errorCode: $errorCode, errorMessage: $errorMessage, username: $username, feedsId: $feedsId, caption: $caption, image: $image, postDate: $postDate, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowFeedsResponseImpl &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.feedsId, feedsId) || other.feedsId == feedsId) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.postDate, postDate) ||
                other.postDate == postDate) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, errorCode, errorMessage,
      username, feedsId, caption, image, postDate, profilePicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowFeedsResponseImplCopyWith<_$ShowFeedsResponseImpl> get copyWith =>
      __$$ShowFeedsResponseImplCopyWithImpl<_$ShowFeedsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowFeedsResponseImplToJson(
      this,
    );
  }
}

abstract class _ShowFeedsResponse implements ShowFeedsResponse {
  factory _ShowFeedsResponse(
      {required final String? errorCode,
      required final String? errorMessage,
      required final String? username,
      required final String? feedsId,
      required final String? caption,
      required final String? image,
      required final String? postDate,
      required final String? profilePicture}) = _$ShowFeedsResponseImpl;

  factory _ShowFeedsResponse.fromJson(Map<String, dynamic> json) =
      _$ShowFeedsResponseImpl.fromJson;

  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  String? get username;
  @override
  String? get feedsId;
  @override
  String? get caption;
  @override
  String? get image;
  @override
  String? get postDate;
  @override
  String? get profilePicture;
  @override
  @JsonKey(ignore: true)
  _$$ShowFeedsResponseImplCopyWith<_$ShowFeedsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminLogoutResponse _$AdminLogoutResponseFromJson(Map<String, dynamic> json) {
  return _AdminLogoutResponse.fromJson(json);
}

/// @nodoc
mixin _$AdminLogoutResponse {
  String? get status => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminLogoutResponseCopyWith<AdminLogoutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminLogoutResponseCopyWith<$Res> {
  factory $AdminLogoutResponseCopyWith(
          AdminLogoutResponse value, $Res Function(AdminLogoutResponse) then) =
      _$AdminLogoutResponseCopyWithImpl<$Res, AdminLogoutResponse>;
  @useResult
  $Res call({String? status, String? errorCode, String? errorMessage});
}

/// @nodoc
class _$AdminLogoutResponseCopyWithImpl<$Res, $Val extends AdminLogoutResponse>
    implements $AdminLogoutResponseCopyWith<$Res> {
  _$AdminLogoutResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AdminLogoutResponseImplCopyWith<$Res>
    implements $AdminLogoutResponseCopyWith<$Res> {
  factory _$$AdminLogoutResponseImplCopyWith(_$AdminLogoutResponseImpl value,
          $Res Function(_$AdminLogoutResponseImpl) then) =
      __$$AdminLogoutResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? errorCode, String? errorMessage});
}

/// @nodoc
class __$$AdminLogoutResponseImplCopyWithImpl<$Res>
    extends _$AdminLogoutResponseCopyWithImpl<$Res, _$AdminLogoutResponseImpl>
    implements _$$AdminLogoutResponseImplCopyWith<$Res> {
  __$$AdminLogoutResponseImplCopyWithImpl(_$AdminLogoutResponseImpl _value,
      $Res Function(_$AdminLogoutResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AdminLogoutResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$AdminLogoutResponseImpl implements _AdminLogoutResponse {
  _$AdminLogoutResponseImpl(
      {required this.status,
      required this.errorCode,
      required this.errorMessage});

  factory _$AdminLogoutResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminLogoutResponseImplFromJson(json);

  @override
  final String? status;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AdminLogoutResponse(status: $status, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminLogoutResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, errorCode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminLogoutResponseImplCopyWith<_$AdminLogoutResponseImpl> get copyWith =>
      __$$AdminLogoutResponseImplCopyWithImpl<_$AdminLogoutResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminLogoutResponseImplToJson(
      this,
    );
  }
}

abstract class _AdminLogoutResponse implements AdminLogoutResponse {
  factory _AdminLogoutResponse(
      {required final String? status,
      required final String? errorCode,
      required final String? errorMessage}) = _$AdminLogoutResponseImpl;

  factory _AdminLogoutResponse.fromJson(Map<String, dynamic> json) =
      _$AdminLogoutResponseImpl.fromJson;

  @override
  String? get status;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AdminLogoutResponseImplCopyWith<_$AdminLogoutResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
