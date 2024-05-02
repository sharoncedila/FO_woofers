// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_adoption.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FilterAdoption _$FilterAdoptionFromJson(Map<String, dynamic> json) {
  return _FilterAdoption.fromJson(json);
}

/// @nodoc
mixin _$FilterAdoption {
  String? get breed => throw _privateConstructorUsedError;
  String? get province => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterAdoptionCopyWith<FilterAdoption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterAdoptionCopyWith<$Res> {
  factory $FilterAdoptionCopyWith(
          FilterAdoption value, $Res Function(FilterAdoption) then) =
      _$FilterAdoptionCopyWithImpl<$Res, FilterAdoption>;
  @useResult
  $Res call({String? breed, String? province, String? gender});
}

/// @nodoc
class _$FilterAdoptionCopyWithImpl<$Res, $Val extends FilterAdoption>
    implements $FilterAdoptionCopyWith<$Res> {
  _$FilterAdoptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breed = freezed,
    Object? province = freezed,
    Object? gender = freezed,
  }) {
    return _then(_value.copyWith(
      breed: freezed == breed
          ? _value.breed
          : breed // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterAdoptionImplCopyWith<$Res>
    implements $FilterAdoptionCopyWith<$Res> {
  factory _$$FilterAdoptionImplCopyWith(_$FilterAdoptionImpl value,
          $Res Function(_$FilterAdoptionImpl) then) =
      __$$FilterAdoptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? breed, String? province, String? gender});
}

/// @nodoc
class __$$FilterAdoptionImplCopyWithImpl<$Res>
    extends _$FilterAdoptionCopyWithImpl<$Res, _$FilterAdoptionImpl>
    implements _$$FilterAdoptionImplCopyWith<$Res> {
  __$$FilterAdoptionImplCopyWithImpl(
      _$FilterAdoptionImpl _value, $Res Function(_$FilterAdoptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breed = freezed,
    Object? province = freezed,
    Object? gender = freezed,
  }) {
    return _then(_$FilterAdoptionImpl(
      breed: freezed == breed
          ? _value.breed
          : breed // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterAdoptionImpl implements _FilterAdoption {
  _$FilterAdoptionImpl({this.breed, this.province, this.gender});

  factory _$FilterAdoptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterAdoptionImplFromJson(json);

  @override
  final String? breed;
  @override
  final String? province;
  @override
  final String? gender;

  @override
  String toString() {
    return 'FilterAdoption(breed: $breed, province: $province, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterAdoptionImpl &&
            (identical(other.breed, breed) || other.breed == breed) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, breed, province, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterAdoptionImplCopyWith<_$FilterAdoptionImpl> get copyWith =>
      __$$FilterAdoptionImplCopyWithImpl<_$FilterAdoptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterAdoptionImplToJson(
      this,
    );
  }
}

abstract class _FilterAdoption implements FilterAdoption {
  factory _FilterAdoption(
      {final String? breed,
      final String? province,
      final String? gender}) = _$FilterAdoptionImpl;

  factory _FilterAdoption.fromJson(Map<String, dynamic> json) =
      _$FilterAdoptionImpl.fromJson;

  @override
  String? get breed;
  @override
  String? get province;
  @override
  String? get gender;
  @override
  @JsonKey(ignore: true)
  _$$FilterAdoptionImplCopyWith<_$FilterAdoptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
