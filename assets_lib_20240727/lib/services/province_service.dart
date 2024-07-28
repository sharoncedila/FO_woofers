import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/model/province_model.dart';

class ProvinceService {
  Future<RetrieveAllProvinceResponse> retrieveAllProvince() async {
    try {
      const api = '/provinces/all';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      return RetrieveAllProvinceResponse.fromJson(
          response.data['outputSchema']);
    } catch (error) {
      throw Exception(error);
    }
  }
}
