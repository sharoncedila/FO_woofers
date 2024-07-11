import 'dart:convert';

import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/model/adoption_model.dart';

class AdoptionService {
  // Adoption page
  Future<List<AdoptionDetail>> retrieveAdoptionList(
      FilterAdoption filterAdoption) async {
    try {
      const api = '/adoption/view';
      final dio = await DioInstance.getInstance();

      var response =
          await dio.get(api, queryParameters: filterAdoption.toJson());
      return (response.data['outputSchema']['dogList'] as List)
          .map((e) => AdoptionDetail.fromJson(e))
          .toList();
    } catch (error) {
      throw Exception(error);
    }
  }

  Future<AdoptConfirmationRequest?> retrieveAdoptConfirmation(
      String dogId) async {
    try {
      String api = '/adoption/confirmation/dog-id/$dogId';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema =
          AdoptConfirmationRequest.fromJson(response.data!['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return AdoptConfirmationRequest.fromJson(response.data['errorSchema']);
      } else {
        return AdoptConfirmationRequest.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
    }
    return null;
  } 

  Future<SendAdoptionNotification?> sendAdoptNotif(
      SendAdoptionNotification adopt) async {
    try {
      const api = '/adoption/send-notification';
      final dio = await DioInstance.getInstance();

      var response = await dio.post(api, data: jsonEncode(adopt.toJson()));

      return SendAdoptionNotification.fromJson(response.data['outputSchema']);
    } catch (error) {
      print(error);
    }
    return null;
  }

  Future<ApproveRejectAdoptionResponse?> approveRejectAdoption(
      ApproveRejectAdoptionRequest request) async {
    try {
      String api = '/adoption/approve-reject-adoption';
      final dio = await DioInstance.getInstance();

      var response = await dio.post(api, data: jsonEncode(request.toJson()));

      return ApproveRejectAdoptionResponse.fromJson(
          response.data['outputSchema']);
    } catch (error) {
      print(error);
    }
    return null;
  }
}
