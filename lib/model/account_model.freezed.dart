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

ResponseLoginModel _$ResponseLoginModelFromJson(Map<String, dynamic> json) {
  return _ResponseLoginModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseLoginModel {
  String? get accountId => throw _privateConstructorUsedError;
  String? get accessToken => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

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
  $Res call(
      {String? accountId,
      String? accessToken,
      String? errorCode,
      String? errorMessage});
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
abstract class _$$ResponseLoginModelImplCopyWith<$Res>
    implements $ResponseLoginModelCopyWith<$Res> {
  factory _$$ResponseLoginModelImplCopyWith(_$ResponseLoginModelImpl value,
          $Res Function(_$ResponseLoginModelImpl) then) =
      __$$ResponseLoginModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? accountId,
      String? accessToken,
      String? errorCode,
      String? errorMessage});
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
    Object? accountId = freezed,
    Object? accessToken = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ResponseLoginModelImpl(
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
class _$ResponseLoginModelImpl implements _ResponseLoginModel {
  _$ResponseLoginModelImpl(
      {required this.accountId,
      required this.accessToken,
      required this.errorCode,
      required this.errorMessage});

  factory _$ResponseLoginModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseLoginModelImplFromJson(json);

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
    return 'ResponseLoginModel(accountId: $accountId, accessToken: $accessToken, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseLoginModelImpl &&
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
      {required final String? accountId,
      required final String? accessToken,
      required final String? errorCode,
      required final String? errorMessage}) = _$ResponseLoginModelImpl;

  factory _ResponseLoginModel.fromJson(Map<String, dynamic> json) =
      _$ResponseLoginModelImpl.fromJson;

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
  _$$ResponseLoginModelImplCopyWith<_$ResponseLoginModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RequestLoginModel _$RequestLoginModelFromJson(Map<String, dynamic> json) {
  return _RequestLoginModel.fromJson(json);
}

/// @nodoc
mixin _$RequestLoginModel {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

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
  $Res call({String? email, String? password});
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
abstract class _$$RequestLoginModelImplCopyWith<$Res>
    implements $RequestLoginModelCopyWith<$Res> {
  factory _$$RequestLoginModelImplCopyWith(_$RequestLoginModelImpl value,
          $Res Function(_$RequestLoginModelImpl) then) =
      __$$RequestLoginModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? password});
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
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$RequestLoginModelImpl(
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
class _$RequestLoginModelImpl implements _RequestLoginModel {
  _$RequestLoginModelImpl({required this.email, required this.password});

  factory _$RequestLoginModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestLoginModelImplFromJson(json);

  @override
  final String? email;
  @override
  final String? password;

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
      {required final String? email,
      required final String? password}) = _$RequestLoginModelImpl;

  factory _RequestLoginModel.fromJson(Map<String, dynamic> json) =
      _$RequestLoginModelImpl.fromJson;

  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$RequestLoginModelImplCopyWith<_$RequestLoginModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LogoutResponse _$LogoutResponseFromJson(Map<String, dynamic> json) {
  return _LogoutResponse.fromJson(json);
}

/// @nodoc
mixin _$LogoutResponse {
  String? get status => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogoutResponseCopyWith<LogoutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutResponseCopyWith<$Res> {
  factory $LogoutResponseCopyWith(
          LogoutResponse value, $Res Function(LogoutResponse) then) =
      _$LogoutResponseCopyWithImpl<$Res, LogoutResponse>;
  @useResult
  $Res call({String? status, String? errorCode, String? errorMessage});
}

/// @nodoc
class _$LogoutResponseCopyWithImpl<$Res, $Val extends LogoutResponse>
    implements $LogoutResponseCopyWith<$Res> {
  _$LogoutResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$LogoutResponseImplCopyWith<$Res>
    implements $LogoutResponseCopyWith<$Res> {
  factory _$$LogoutResponseImplCopyWith(_$LogoutResponseImpl value,
          $Res Function(_$LogoutResponseImpl) then) =
      __$$LogoutResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? errorCode, String? errorMessage});
}

/// @nodoc
class __$$LogoutResponseImplCopyWithImpl<$Res>
    extends _$LogoutResponseCopyWithImpl<$Res, _$LogoutResponseImpl>
    implements _$$LogoutResponseImplCopyWith<$Res> {
  __$$LogoutResponseImplCopyWithImpl(
      _$LogoutResponseImpl _value, $Res Function(_$LogoutResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$LogoutResponseImpl(
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
class _$LogoutResponseImpl implements _LogoutResponse {
  _$LogoutResponseImpl(
      {required this.status,
      required this.errorCode,
      required this.errorMessage});

  factory _$LogoutResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogoutResponseImplFromJson(json);

  @override
  final String? status;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'LogoutResponse(status: $status, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutResponseImpl &&
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
  _$$LogoutResponseImplCopyWith<_$LogoutResponseImpl> get copyWith =>
      __$$LogoutResponseImplCopyWithImpl<_$LogoutResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogoutResponseImplToJson(
      this,
    );
  }
}

abstract class _LogoutResponse implements LogoutResponse {
  factory _LogoutResponse(
      {required final String? status,
      required final String? errorCode,
      required final String? errorMessage}) = _$LogoutResponseImpl;

  factory _LogoutResponse.fromJson(Map<String, dynamic> json) =
      _$LogoutResponseImpl.fromJson;

  @override
  String? get status;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$LogoutResponseImplCopyWith<_$LogoutResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EditProfileRequest _$EditProfileRequestFromJson(Map<String, dynamic> json) {
  return _EditProfileRequest.fromJson(json);
}

/// @nodoc
mixin _$EditProfileRequest {
  String? get fullName => throw _privateConstructorUsedError;
  String? get provinceName => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

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
      String? description,
      String? image});
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
    Object? image = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
      String? description,
      String? image});
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
    Object? image = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
      required this.description,
      this.image});

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
  final String? image;

  @override
  String toString() {
    return 'EditProfileRequest(fullName: $fullName, provinceName: $provinceName, phoneNumber: $phoneNumber, description: $description, image: $image)';
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
                other.description == description) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fullName, provinceName, phoneNumber, description, image);

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
      required final String? description,
      final String? image}) = _$EditProfileRequestImpl;

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
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$EditProfileRequestImplCopyWith<_$EditProfileRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
