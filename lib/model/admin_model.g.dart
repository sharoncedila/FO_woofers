// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      accountId: json['accountId'] as String?,
      username: json['username'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'username': instance.username,
      'image': instance.image,
    };

_$AdminLoginRequestImpl _$$AdminLoginRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminLoginRequestImpl(
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$AdminLoginRequestImplToJson(
        _$AdminLoginRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$AdminLoginResponseImpl _$$AdminLoginResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminLoginResponseImpl(
      accountId: json['accountId'] as String?,
      accessToken: json['accessToken'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$AdminLoginResponseImplToJson(
        _$AdminLoginResponseImpl instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'accessToken': instance.accessToken,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };

_$AdminDeleteAccountResponseImpl _$$AdminDeleteAccountResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminDeleteAccountResponseImpl(
      status: json['status'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$AdminDeleteAccountResponseImplToJson(
        _$AdminDeleteAccountResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };

_$AdminDeleteDogResponseImpl _$$AdminDeleteDogResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminDeleteDogResponseImpl(
      status: json['status'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$AdminDeleteDogResponseImplToJson(
        _$AdminDeleteDogResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };

_$AdminDeleteFeedsResponseImpl _$$AdminDeleteFeedsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminDeleteFeedsResponseImpl(
      status: json['status'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$AdminDeleteFeedsResponseImplToJson(
        _$AdminDeleteFeedsResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };

_$ShowAccountsResponseImpl _$$ShowAccountsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ShowAccountsResponseImpl(
      status: json['status'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      accountId: json['accountId'] as String?,
      username: json['username'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$ShowAccountsResponseImplToJson(
        _$ShowAccountsResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'accountId': instance.accountId,
      'username': instance.username,
      'image': instance.image,
    };

_$DogImpl _$$DogImplFromJson(Map<String, dynamic> json) => _$DogImpl(
      dogId: json['dogId'] as String?,
      dogName: json['dogName'] as String?,
      dogBreed: json['dogBreed'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$DogImplToJson(_$DogImpl instance) => <String, dynamic>{
      'dogId': instance.dogId,
      'dogName': instance.dogName,
      'dogBreed': instance.dogBreed,
      'image': instance.image,
    };

_$ShowDogsResponseImpl _$$ShowDogsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ShowDogsResponseImpl(
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      dogId: json['dogId'] as String?,
      dogName: json['dogName'] as String?,
      dogBreed: json['dogBreed'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$ShowDogsResponseImplToJson(
        _$ShowDogsResponseImpl instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'dogId': instance.dogId,
      'dogName': instance.dogName,
      'dogBreed': instance.dogBreed,
      'image': instance.image,
    };

_$FeedsImpl _$$FeedsImplFromJson(Map<String, dynamic> json) => _$FeedsImpl(
      username: json['username'] as String?,
      feedsId: json['feedsId'] as String?,
      caption: json['caption'] as String?,
      image: json['image'] as String?,
      postDate: json['postDate'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      profilePicture: json['profilePicture'] as String?,
    );

Map<String, dynamic> _$$FeedsImplToJson(_$FeedsImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'feedsId': instance.feedsId,
      'caption': instance.caption,
      'image': instance.image,
      'postDate': instance.postDate,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'profilePicture': instance.profilePicture,
    };

_$ShowFeedsResponseImpl _$$ShowFeedsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ShowFeedsResponseImpl(
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      username: json['username'] as String?,
      feedsId: json['feedsId'] as String?,
      caption: json['caption'] as String?,
      image: json['image'] as String?,
      postDate: json['postDate'] as String?,
      profilePicture: json['profilePicture'] as String?,
    );

Map<String, dynamic> _$$ShowFeedsResponseImplToJson(
        _$ShowFeedsResponseImpl instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'username': instance.username,
      'feedsId': instance.feedsId,
      'caption': instance.caption,
      'image': instance.image,
      'postDate': instance.postDate,
      'profilePicture': instance.profilePicture,
    };

_$AdminLogoutResponseImpl _$$AdminLogoutResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminLogoutResponseImpl(
      status: json['status'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$AdminLogoutResponseImplToJson(
        _$AdminLogoutResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };
