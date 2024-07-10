// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'province_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProvinceImpl _$$ProvinceImplFromJson(Map<String, dynamic> json) =>
    _$ProvinceImpl(
      provinceId: json['provinceId'] as String?,
      provinceName: json['provinceName'] as String,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$ProvinceImplToJson(_$ProvinceImpl instance) =>
    <String, dynamic>{
      'provinceId': instance.provinceId,
      'provinceName': instance.provinceName,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };

_$RetrieveAllProvinceResponseImpl _$$RetrieveAllProvinceResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RetrieveAllProvinceResponseImpl(
      provinceList: (json['provinceList'] as List<dynamic>)
          .map((e) => Province.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RetrieveAllProvinceResponseImplToJson(
        _$RetrieveAllProvinceResponseImpl instance) =>
    <String, dynamic>{
      'provinceList': instance.provinceList,
    };
