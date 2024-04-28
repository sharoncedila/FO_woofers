// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Breed _$BreedFromJson(Map<String, dynamic> json) {
  return _Breed.fromJson(json);
}

/// @nodoc
mixin _$Breed {
  String? get breedId => throw _privateConstructorUsedError;
  String get breedName => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreedCopyWith<Breed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedCopyWith<$Res> {
  factory $BreedCopyWith(Breed value, $Res Function(Breed) then) =
      _$BreedCopyWithImpl<$Res, Breed>;
  @useResult
  $Res call(
      {String? breedId,
      String breedName,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class _$BreedCopyWithImpl<$Res, $Val extends Breed>
    implements $BreedCopyWith<$Res> {
  _$BreedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breedId = freezed,
    Object? breedName = null,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      breedId: freezed == breedId
          ? _value.breedId
          : breedId // ignore: cast_nullable_to_non_nullable
              as String?,
      breedName: null == breedName
          ? _value.breedName
          : breedName // ignore: cast_nullable_to_non_nullable
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
abstract class _$$BreedImplCopyWith<$Res> implements $BreedCopyWith<$Res> {
  factory _$$BreedImplCopyWith(
          _$BreedImpl value, $Res Function(_$BreedImpl) then) =
      __$$BreedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? breedId,
      String breedName,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class __$$BreedImplCopyWithImpl<$Res>
    extends _$BreedCopyWithImpl<$Res, _$BreedImpl>
    implements _$$BreedImplCopyWith<$Res> {
  __$$BreedImplCopyWithImpl(
      _$BreedImpl _value, $Res Function(_$BreedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breedId = freezed,
    Object? breedName = null,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$BreedImpl(
      breedId: freezed == breedId
          ? _value.breedId
          : breedId // ignore: cast_nullable_to_non_nullable
              as String?,
      breedName: null == breedName
          ? _value.breedName
          : breedName // ignore: cast_nullable_to_non_nullable
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
class _$BreedImpl implements _Breed {
  _$BreedImpl(
      {required this.breedId,
      required this.breedName,
      required this.errorCode,
      required this.errorMessage});

  factory _$BreedImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreedImplFromJson(json);

  @override
  final String? breedId;
  @override
  final String breedName;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'Breed(breedId: $breedId, breedName: $breedName, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreedImpl &&
            (identical(other.breedId, breedId) || other.breedId == breedId) &&
            (identical(other.breedName, breedName) ||
                other.breedName == breedName) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, breedId, breedName, errorCode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BreedImplCopyWith<_$BreedImpl> get copyWith =>
      __$$BreedImplCopyWithImpl<_$BreedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreedImplToJson(
      this,
    );
  }
}

abstract class _Breed implements Breed {
  factory _Breed(
      {required final String? breedId,
      required final String breedName,
      required final String? errorCode,
      required final String? errorMessage}) = _$BreedImpl;

  factory _Breed.fromJson(Map<String, dynamic> json) = _$BreedImpl.fromJson;

  @override
  String? get breedId;
  @override
  String get breedName;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$BreedImplCopyWith<_$BreedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RetrieveAllBreedResponse _$RetrieveAllBreedResponseFromJson(
    Map<String, dynamic> json) {
  return _RetrieveAllBreedResponse.fromJson(json);
}

/// @nodoc
mixin _$RetrieveAllBreedResponse {
  List<Breed> get breedList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RetrieveAllBreedResponseCopyWith<RetrieveAllBreedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetrieveAllBreedResponseCopyWith<$Res> {
  factory $RetrieveAllBreedResponseCopyWith(RetrieveAllBreedResponse value,
          $Res Function(RetrieveAllBreedResponse) then) =
      _$RetrieveAllBreedResponseCopyWithImpl<$Res, RetrieveAllBreedResponse>;
  @useResult
  $Res call({List<Breed> breedList});
}

/// @nodoc
class _$RetrieveAllBreedResponseCopyWithImpl<$Res,
        $Val extends RetrieveAllBreedResponse>
    implements $RetrieveAllBreedResponseCopyWith<$Res> {
  _$RetrieveAllBreedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breedList = null,
  }) {
    return _then(_value.copyWith(
      breedList: null == breedList
          ? _value.breedList
          : breedList // ignore: cast_nullable_to_non_nullable
              as List<Breed>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RetrieveAllBreedResponseImplCopyWith<$Res>
    implements $RetrieveAllBreedResponseCopyWith<$Res> {
  factory _$$RetrieveAllBreedResponseImplCopyWith(
          _$RetrieveAllBreedResponseImpl value,
          $Res Function(_$RetrieveAllBreedResponseImpl) then) =
      __$$RetrieveAllBreedResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Breed> breedList});
}

/// @nodoc
class __$$RetrieveAllBreedResponseImplCopyWithImpl<$Res>
    extends _$RetrieveAllBreedResponseCopyWithImpl<$Res,
        _$RetrieveAllBreedResponseImpl>
    implements _$$RetrieveAllBreedResponseImplCopyWith<$Res> {
  __$$RetrieveAllBreedResponseImplCopyWithImpl(
      _$RetrieveAllBreedResponseImpl _value,
      $Res Function(_$RetrieveAllBreedResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breedList = null,
  }) {
    return _then(_$RetrieveAllBreedResponseImpl(
      breedList: null == breedList
          ? _value._breedList
          : breedList // ignore: cast_nullable_to_non_nullable
              as List<Breed>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RetrieveAllBreedResponseImpl implements _RetrieveAllBreedResponse {
  _$RetrieveAllBreedResponseImpl({required final List<Breed> breedList})
      : _breedList = breedList;

  factory _$RetrieveAllBreedResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RetrieveAllBreedResponseImplFromJson(json);

  final List<Breed> _breedList;
  @override
  List<Breed> get breedList {
    if (_breedList is EqualUnmodifiableListView) return _breedList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breedList);
  }

  @override
  String toString() {
    return 'RetrieveAllBreedResponse(breedList: $breedList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetrieveAllBreedResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._breedList, _breedList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_breedList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RetrieveAllBreedResponseImplCopyWith<_$RetrieveAllBreedResponseImpl>
      get copyWith => __$$RetrieveAllBreedResponseImplCopyWithImpl<
          _$RetrieveAllBreedResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RetrieveAllBreedResponseImplToJson(
      this,
    );
  }
}

abstract class _RetrieveAllBreedResponse implements RetrieveAllBreedResponse {
  factory _RetrieveAllBreedResponse({required final List<Breed> breedList}) =
      _$RetrieveAllBreedResponseImpl;

  factory _RetrieveAllBreedResponse.fromJson(Map<String, dynamic> json) =
      _$RetrieveAllBreedResponseImpl.fromJson;

  @override
  List<Breed> get breedList;
  @override
  @JsonKey(ignore: true)
  _$$RetrieveAllBreedResponseImplCopyWith<_$RetrieveAllBreedResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
