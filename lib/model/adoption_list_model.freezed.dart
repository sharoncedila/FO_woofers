// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adoption_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdoptionDetail _$AdoptionDetailFromJson(Map<String, dynamic> json) {
  return _AdoptionDetail.fromJson(json);
}

/// @nodoc
mixin _$AdoptionDetail {
  String get dogId => throw _privateConstructorUsedError;
  String get breedName => throw _privateConstructorUsedError;
  String get dogName => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String get age => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String get provinceName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdoptionDetailCopyWith<AdoptionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdoptionDetailCopyWith<$Res> {
  factory $AdoptionDetailCopyWith(
          AdoptionDetail value, $Res Function(AdoptionDetail) then) =
      _$AdoptionDetailCopyWithImpl<$Res, AdoptionDetail>;
  @useResult
  $Res call(
      {String dogId,
      String breedName,
      String dogName,
      String? gender,
      String age,
      String? image,
      String provinceName});
}

/// @nodoc
class _$AdoptionDetailCopyWithImpl<$Res, $Val extends AdoptionDetail>
    implements $AdoptionDetailCopyWith<$Res> {
  _$AdoptionDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dogId = null,
    Object? breedName = null,
    Object? dogName = null,
    Object? gender = freezed,
    Object? age = null,
    Object? image = freezed,
    Object? provinceName = null,
  }) {
    return _then(_value.copyWith(
      dogId: null == dogId
          ? _value.dogId
          : dogId // ignore: cast_nullable_to_non_nullable
              as String,
      breedName: null == breedName
          ? _value.breedName
          : breedName // ignore: cast_nullable_to_non_nullable
              as String,
      dogName: null == dogName
          ? _value.dogName
          : dogName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceName: null == provinceName
          ? _value.provinceName
          : provinceName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdoptionDetailImplCopyWith<$Res>
    implements $AdoptionDetailCopyWith<$Res> {
  factory _$$AdoptionDetailImplCopyWith(_$AdoptionDetailImpl value,
          $Res Function(_$AdoptionDetailImpl) then) =
      __$$AdoptionDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String dogId,
      String breedName,
      String dogName,
      String? gender,
      String age,
      String? image,
      String provinceName});
}

/// @nodoc
class __$$AdoptionDetailImplCopyWithImpl<$Res>
    extends _$AdoptionDetailCopyWithImpl<$Res, _$AdoptionDetailImpl>
    implements _$$AdoptionDetailImplCopyWith<$Res> {
  __$$AdoptionDetailImplCopyWithImpl(
      _$AdoptionDetailImpl _value, $Res Function(_$AdoptionDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dogId = null,
    Object? breedName = null,
    Object? dogName = null,
    Object? gender = freezed,
    Object? age = null,
    Object? image = freezed,
    Object? provinceName = null,
  }) {
    return _then(_$AdoptionDetailImpl(
      dogId: null == dogId
          ? _value.dogId
          : dogId // ignore: cast_nullable_to_non_nullable
              as String,
      breedName: null == breedName
          ? _value.breedName
          : breedName // ignore: cast_nullable_to_non_nullable
              as String,
      dogName: null == dogName
          ? _value.dogName
          : dogName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceName: null == provinceName
          ? _value.provinceName
          : provinceName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdoptionDetailImpl implements _AdoptionDetail {
  _$AdoptionDetailImpl(
      {required this.dogId,
      required this.breedName,
      required this.dogName,
      required this.gender,
      required this.age,
      required this.image,
      required this.provinceName});

  factory _$AdoptionDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdoptionDetailImplFromJson(json);

  @override
  final String dogId;
  @override
  final String breedName;
  @override
  final String dogName;
  @override
  final String? gender;
  @override
  final String age;
  @override
  final String? image;
  @override
  final String provinceName;

  @override
  String toString() {
    return 'AdoptionDetail(dogId: $dogId, breedName: $breedName, dogName: $dogName, gender: $gender, age: $age, image: $image, provinceName: $provinceName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdoptionDetailImpl &&
            (identical(other.dogId, dogId) || other.dogId == dogId) &&
            (identical(other.breedName, breedName) ||
                other.breedName == breedName) &&
            (identical(other.dogName, dogName) || other.dogName == dogName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.provinceName, provinceName) ||
                other.provinceName == provinceName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, dogId, breedName, dogName, gender, age, image, provinceName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdoptionDetailImplCopyWith<_$AdoptionDetailImpl> get copyWith =>
      __$$AdoptionDetailImplCopyWithImpl<_$AdoptionDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdoptionDetailImplToJson(
      this,
    );
  }
}

abstract class _AdoptionDetail implements AdoptionDetail {
  factory _AdoptionDetail(
      {required final String dogId,
      required final String breedName,
      required final String dogName,
      required final String? gender,
      required final String age,
      required final String? image,
      required final String provinceName}) = _$AdoptionDetailImpl;

  factory _AdoptionDetail.fromJson(Map<String, dynamic> json) =
      _$AdoptionDetailImpl.fromJson;

  @override
  String get dogId;
  @override
  String get breedName;
  @override
  String get dogName;
  @override
  String? get gender;
  @override
  String get age;
  @override
  String? get image;
  @override
  String get provinceName;
  @override
  @JsonKey(ignore: true)
  _$$AdoptionDetailImplCopyWith<_$AdoptionDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
