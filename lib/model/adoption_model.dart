import 'package:freezed_annotation/freezed_annotation.dart';
part 'adoption_model.freezed.dart';
part 'adoption_model.g.dart';

@freezed
class AdoptionDetail with _$AdoptionDetail {
  factory AdoptionDetail(
      {required String dogId,
      required String? breedName,
      required String? dogName,
      required String? gender,
      required String? age,
      required String? image,
      required String? provinceName,
      required String? errorCode,
      required String? errorMessage}) = _AdoptionDetail;

  factory AdoptionDetail.fromJson(Map<String, dynamic> json) =>
      _$AdoptionDetailFromJson(json);
}

@freezed
class AdoptConfirmationRequest with _$AdoptConfirmationRequest {
  factory AdoptConfirmationRequest({
    required String? errorCode,
    required String? errorMessage,
    required DogData? dogData,
    required OwnerData? ownerData,
  }) = _AdoptConfirmationRequest;

  factory AdoptConfirmationRequest.fromJson(Map<String, dynamic> json) =>
      _$AdoptConfirmationRequestFromJson(json);
}

@freezed
class DogData with _$DogData {
  factory DogData({
    required String? dogId,
    required String? dogName,
    required String? breedName,
    required String? gender,
    required String? dateOfBirth,
    required String? description,
    required String? vaccination,
    required String? image,
    required String? provinceName,
  }) = _DogData;

  factory DogData.fromJson(Map<String, dynamic> json) =>
      _$DogDataFromJson(json);
}

@freezed
class OwnerData with _$OwnerData {
  factory OwnerData({
    required String? accountId,
    required String? username,
    required String? fullName,
    required String? email,
    required String? phoneNumber,
    required String? description,
    required String? image,
  }) = _OwnerData;

  factory OwnerData.fromJson(Map<String, dynamic> json) =>
      _$OwnerDataFromJson(json);
}

@freezed
<<<<<<< HEAD
class SendAdoptNotifRequest with _$SendAdoptNotifRequest{
  factory SendAdoptNotifRequest({
=======
class SendAdoptionNotification with _$SendAdoptionNotification {
  factory SendAdoptionNotification({
>>>>>>> UAT
    required String? dogId,
    required String? dogName,
    required String? breedName,
    required String? ownerId,
    required String? ownerUsername,
<<<<<<< HEAD
  }) = _SendAdoptNotifRequest;

  factory SendAdoptNotifRequest.fromJson(Map<String, dynamic> json) =>
      _$SendAdoptNotifRequestFromJson(json);
}

@freezed
class ApproveRejectAdoptionRequest with _$ApproveRejectAdoptionRequest{
  factory ApproveRejectAdoptionRequest({
    required String? notificationId,
    required String? status
  }) = _ApproveRejectAdoptionRequest;

  factory ApproveRejectAdoptionRequest.fromJson(Map<String, dynamic> json) =>
      _$ApproveRejectAdoptionRequestFromJson(json);
=======
  }) = _SendAdoptionNotification;

  factory SendAdoptionNotification.fromJson(Map<String, dynamic> json) =>
      _$SendAdoptionNotificationFromJson(json);
>>>>>>> UAT
}
