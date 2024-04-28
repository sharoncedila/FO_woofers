// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dog_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDogProfileModelImpl _$$ResponseDogProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDogProfileModelImpl(
      dogId: json['dogId'] as String?,
      dogName: json['dogName'] as String?,
      breedName: json['breedName'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      gender: json['gender'] as String?,
      provinceName: json['provinceName'] as String?,
      vaccination: json['vaccination'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      isOpenAdopt: json['isOpenAdopt'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
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
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };

_$AddDogRequestImpl _$$AddDogRequestImplFromJson(Map<String, dynamic> json) =>
    _$AddDogRequestImpl(
      dogName: json['dogName'] as String?,
      breedName: json['breedName'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      gender: json['gender'] as String?,
      provinceName: json['provinceName'] as String?,
      vaccination: json['vaccination'] as String?,
      description: json['description'] as String?,
      isOpenAdopt: json['isOpenAdopt'] as String?,
    );

Map<String, dynamic> _$$AddDogRequestImplToJson(_$AddDogRequestImpl instance) =>
    <String, dynamic>{
      'dogName': instance.dogName,
      'breedName': instance.breedName,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
      'provinceName': instance.provinceName,
      'vaccination': instance.vaccination,
      'description': instance.description,
      'isOpenAdopt': instance.isOpenAdopt,
    };

_$AddDogResponseImpl _$$AddDogResponseImplFromJson(Map<String, dynamic> json) =>
    _$AddDogResponseImpl(
      dogId: json['dogId'] as String?,
      breedName: json['breedName'] as String?,
      dogName: json['dogName'] as String?,
      gender: json['gender'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      description: json['description'] as String?,
      vaccination: json['vaccination'] as String?,
      image: json['image'] as String?,
      isOpenAdopt: json['isOpenAdopt'] as String?,
      provinceName: json['provinceName'] as String?,
    );

Map<String, dynamic> _$$AddDogResponseImplToJson(
        _$AddDogResponseImpl instance) =>
    <String, dynamic>{
      'dogId': instance.dogId,
      'breedName': instance.breedName,
      'dogName': instance.dogName,
      'gender': instance.gender,
      'dateOfBirth': instance.dateOfBirth,
      'description': instance.description,
      'vaccination': instance.vaccination,
      'image': instance.image,
      'isOpenAdopt': instance.isOpenAdopt,
      'provinceName': instance.provinceName,
    };

_$EditDogResponseImpl _$$EditDogResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EditDogResponseImpl(
      dogId: json['dogId'] as String?,
      breedName: json['breedName'] as String?,
      dogName: json['dogName'] as String?,
      gender: json['gender'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      description: json['description'] as String?,
      vaccination: json['vaccination'] as String?,
      image: json['image'] as String?,
      isOpenAdopt: json['isOpenAdopt'] as String?,
      provinceName: json['provinceName'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$EditDogResponseImplToJson(
        _$EditDogResponseImpl instance) =>
    <String, dynamic>{
      'dogId': instance.dogId,
      'breedName': instance.breedName,
      'dogName': instance.dogName,
      'gender': instance.gender,
      'dateOfBirth': instance.dateOfBirth,
      'description': instance.description,
      'vaccination': instance.vaccination,
      'image': instance.image,
      'isOpenAdopt': instance.isOpenAdopt,
      'provinceName': instance.provinceName,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };

_$EditDogRequestImpl _$$EditDogRequestImplFromJson(Map<String, dynamic> json) =>
    _$EditDogRequestImpl(
      dogId: json['dogId'] as String?,
      dogName: json['dogName'] as String?,
      breedName: json['breedName'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      gender: json['gender'] as String?,
      provinceName: json['provinceName'] as String?,
      vaccination: json['vaccination'] as String?,
      description: json['description'] as String?,
      isOpenAdopt: json['isOpenAdopt'] as String?,
    );

Map<String, dynamic> _$$EditDogRequestImplToJson(
        _$EditDogRequestImpl instance) =>
    <String, dynamic>{
      'dogId': instance.dogId,
      'dogName': instance.dogName,
      'breedName': instance.breedName,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
      'provinceName': instance.provinceName,
      'vaccination': instance.vaccination,
      'description': instance.description,
      'isOpenAdopt': instance.isOpenAdopt,
    };
