
import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/model/error_schema_model.dart';
import 'package:woofers/model/notification_model.dart';

class NotificationService{
  Future<List<ViewNotificationResponse>?> retrieveNotificationList() async{
    try {
      const api = '/notification/view';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema = ErrorSchema.fromJson(response.data!['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return [ViewNotificationResponse.fromJson(response.data['errorSchema'])];
      }else{
        return (response.data['outputSchema']['notificationList'] as List)
            .map((e) => ViewNotificationResponse.fromJson(e))
            .toList();
      }
    } catch (error) {
      print(error);
    }
    return null;
  }
}