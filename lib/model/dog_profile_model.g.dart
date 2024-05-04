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
      breedName: json['breedName'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      gender: json['gender'] as String?,
      provinceName: json['provinceName'] as String?,
      vaccination: json['vaccination'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      isOpenAdopt: json['isOpenAdopt'] as String?,
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

_$AddDogRequestImpl _$$AddDogRequestImplFromJson(Map<String, dynamic> json) =>
    _$AddDogRequestImpl(
      dogName: json['dogName'] as String?,
      breedName: json['breedName'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      gender: json['gender'] as String?,
      provinceName: json['provinceName'] as String?,
      vaccination: json['vaccination'] as String?,
      description: json['description'] as String?,
      isOpenAdopt: json['isOpenAdopt'] as bool?,
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
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$AddDogResponseImplToJson(
        _$AddDogResponseImpl instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };

_$EditDogResponseImpl _$$EditDogResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EditDogResponseImpl(
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$EditDogResponseImplToJson(
        _$EditDogResponseImpl instance) =>
    <String, dynamic>{
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

_$ResponseDogCardImpl _$$ResponseDogCardImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDogCardImpl(
      dogId: json['dogId'] as String,
      dogName: json['dogName'] as String,
      breedName: json['breedName'] as String?,
      age: json['age'] as String?,
      image: json['image'] as String?,
      isOpenAdopt: json['isOpenAdopt'] as String?,
    );

Map<String, dynamic> _$$ResponseDogCardImplToJson(
        _$ResponseDogCardImpl instance) =>
    <String, dynamic>{
      'dogId': instance.dogId,
      'dogName': instance.dogName,
      'breedName': instance.breedName,
      'age': instance.age,
      'image': instance.image,
      'isOpenAdopt': instance.isOpenAdopt,
    };

_$DeleteDogResponseImpl _$$DeleteDogResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteDogResponseImpl(
      status: json['status'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$DeleteDogResponseImplToJson(
        _$DeleteDogResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };
