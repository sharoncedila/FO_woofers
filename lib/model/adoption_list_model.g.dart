// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adoption_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdoptionDetailImpl _$$AdoptionDetailImplFromJson(Map<String, dynamic> json) =>
    _$AdoptionDetailImpl(
      dogId: json['dogId'] as String,
      breedName: json['breedName'] as String,
      dogName: json['dogName'] as String,
      gender: json['gender'] as String?,
      age: json['age'] as String,
      image: json['image'] as String?,
      provinceName: json['provinceName'] as String,
    );

Map<String, dynamic> _$$AdoptionDetailImplToJson(
        _$AdoptionDetailImpl instance) =>
    <String, dynamic>{
      'dogId': instance.dogId,
      'breedName': instance.breedName,
      'dogName': instance.dogName,
      'gender': instance.gender,
      'age': instance.age,
      'image': instance.image,
      'provinceName': instance.provinceName,
    };
