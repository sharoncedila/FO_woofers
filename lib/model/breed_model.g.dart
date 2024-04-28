// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BreedImpl _$$BreedImplFromJson(Map<String, dynamic> json) => _$BreedImpl(
      breedId: json['breedId'] as String?,
      breedName: json['breedName'] as String,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$BreedImplToJson(_$BreedImpl instance) =>
    <String, dynamic>{
      'breedId': instance.breedId,
      'breedName': instance.breedName,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };

_$RetrieveAllBreedResponseImpl _$$RetrieveAllBreedResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RetrieveAllBreedResponseImpl(
      breedList: (json['breedList'] as List<dynamic>)
          .map((e) => Breed.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RetrieveAllBreedResponseImplToJson(
        _$RetrieveAllBreedResponseImpl instance) =>
    <String, dynamic>{
      'breedList': instance.breedList,
    };
