import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_model.freezed.dart';
part 'register_model.g.dart';

@freezed
class ResponseRegisterModel with _$ResponseRegisterModel {
  factory ResponseRegisterModel(
      {required String? username,
      required String? fullname,
      required String? email,
      required String? provinceName,
      required String? phoneNumber,
      required String? accountId,
      required String? errorCode,
      required String? errorMessage}) = _ResponseRegisterModel;

  factory ResponseRegisterModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseRegisterModelFromJson(json);
}

@freezed
class RequestRegisterModel with _$RequestRegisterModel {
  factory RequestRegisterModel(
      {required String username,
      required String? fullname,
      required String email,
      required String provinceName,
      required String phoneNumber,
      required String password}) = _RequestRegisterModel;

  factory RequestRegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RequestRegisterModelFromJson(json);
}
