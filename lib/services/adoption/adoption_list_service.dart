import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/model/adoption_list_model.dart';

class RetrieveAdoptionListService {
  Future<List<AdoptionDetail>> retrieveAdoptionList() async {
    try {
      const api = '/adoption/view';
      final dio = await DioInstance.getInstance();

      final response = await dio.get(api);
      if (response.data['outputSchema'] == null) {
        return [];
      }
      print(response.data['outputSchema']['dogList']);
      return (response.data['outputSchema']['dogList'] as List)
          .map((e) => AdoptionDetail.fromJson(e))
          .toList();
    } catch (error) {
      throw Exception(error);
    }
  }
}
