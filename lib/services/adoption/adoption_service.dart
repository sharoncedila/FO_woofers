import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/model/adoption_model.dart';
import 'package:woofers/model/error_schema_model.dart';

class AdoptionService {
  Future<List<AdoptionDetail>> retrieveAdoptionList() async {
    try {
      const api = '/adoption/view';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema = ErrorSchema.fromJson(response.data['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return [AdoptionDetail.fromJson(response.data['errorSchema'])];
      } else {
        return (response.data['outputSchema']['dogList'] as List)
            .map((e) => AdoptionDetail.fromJson(e))
            .toList();
      }
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
      final errorSchema = ErrorSchema.fromJson(response.data!['errorSchema']);
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
}
