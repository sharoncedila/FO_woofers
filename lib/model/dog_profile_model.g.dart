// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dog_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDogProfileModelImpl _$$ResponseDogProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDogProfileModelImpl(
      dogId: json['dogId'] as String,
      dogName: json['dogName'] as String,
      breedName: json['breedName'] as String,
      dateOfBirth: json['dateOfBirth'] as String,
      gender: json['gender'] as String,
      provinceName: json['provinceName'] as String,
      vaccination: json['vaccination'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      isOpenAdopt: json['isOpenAdopt'] as String,
    );

Map<String, dynamic> _$$ResponseDogProfileModelImplToJson(
        _$ResponseDogProfileModelImpl instance) =>
    <String, dynamic>{
      'dogId': instance.dogId,
      'dogName': instance.dogName,
      'breedName': instance.breedName,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
      'provinceName': instance.provinceName,
      'vaccination': instance.vaccination,
      'description': instance.description,
      'image': instance.image,
      'isOpenAdopt': instance.isOpenAdopt,
    };
