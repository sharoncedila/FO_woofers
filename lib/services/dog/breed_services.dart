import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/model/error_schema_model.dart';
import 'package:woofers/model/breed_model.dart';

class RetrieveBreedService {
  Future<RetrieveAllBreedResponse> retrieveAllBreed() async {
    try {
      const api = '/breeds/all';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema = ErrorSchema.fromJson(response.data!['errorSchema']);
      return RetrieveAllBreedResponse.fromJson(
          response.data['outputSchema']);
    } catch (error) {
      throw Exception(error);
    }
  }
}
