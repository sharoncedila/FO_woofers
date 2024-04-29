// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adoption_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdoptionDetailImpl _$$AdoptionDetailImplFromJson(Map<String, dynamic> json) =>
    _$AdoptionDetailImpl(
      dogId: json['dogId'] as String,
      breedName: json['breedName'] as String?,
      dogName: json['dogName'] as String?,
      gender: json['gender'] as String?,
      age: json['age'] as String?,
      image: json['image'] as String?,
      provinceName: json['provinceName'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
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
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };

_$AdoptConfirmationRequestImpl _$$AdoptConfirmationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AdoptConfirmationRequestImpl(
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      dogData: json['dogData'] == null
          ? null
          : DogData.fromJson(json['dogData'] as Map<String, dynamic>),
      ownerData: json['ownerData'] == null
          ? null
          : OwnerData.fromJson(json['ownerData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdoptConfirmationRequestImplToJson(
        _$AdoptConfirmationRequestImpl instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'dogData': instance.dogData,
      'ownerData': instance.ownerData,
    };

_$DogDataImpl _$$DogDataImplFromJson(Map<String, dynamic> json) =>
    _$DogDataImpl(
      dogId: json['dogId'] as String?,
      dogName: json['dogName'] as String?,
      breedName: json['breedName'] as String?,
      gender: json['gender'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      description: json['description'] as String?,
      vaccination: json['vaccination'] as String?,
      image: json['image'] as String?,
      provinceName: json['provinceName'] as String?,
    );

Map<String, dynamic> _$$DogDataImplToJson(_$DogDataImpl instance) =>
    <String, dynamic>{
      'dogId': instance.dogId,
      'dogName': instance.dogName,
      'breedName': instance.breedName,
      'gender': instance.gender,
      'dateOfBirth': instance.dateOfBirth,
      'description': instance.description,
      'vaccination': instance.vaccination,
      'image': instance.image,
      'provinceName': instance.provinceName,
    };

_$OwnerDataImpl _$$OwnerDataImplFromJson(Map<String, dynamic> json) =>
    _$OwnerDataImpl(
      accountId: json['accountId'] as String?,
      username: json['username'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$OwnerDataImplToJson(_$OwnerDataImpl instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'username': instance.username,
      'fullName': instance.fullName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'description': instance.description,
      'image': instance.image,
    };
