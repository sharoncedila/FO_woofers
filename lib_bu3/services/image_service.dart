import 'dart:io';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/model/image_model.dart';

class ImageService {
  Future<UploadImageResponse?> uploadProfilePicture(File image) async {
    try {
      const api = '/upload/account';
      final dio = await DioInstance.getInstance();

      String fileName = image.path.split('/').last;
      String extension = fileName.split('.').last.toLowerCase();
      FormData formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(
          image.path,
          filename: fileName,
          contentType: MediaType('image', extension),
        ),
      });

      var response = await dio.post(api, data: formData);
      final errorSchema = UploadImageResponse.fromJson(response.data['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return UploadImageResponse.fromJson(response.data['errorSchema']);
      } else {
        return UploadImageResponse.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
    }
    return null;
  }

  Future<UploadImageResponse?> uploadDogImage(String? dogId, File image) async {
    try {
      String api;
      if (dogId == null) {
        api = '/upload/dog';
      } else {
        api = '/upload/dog?dog-id=$dogId';
      }

      final dio = await DioInstance.getInstance();

      String fileName = image.path.split('/').last;
      String extension = fileName.split('.').last.toLowerCase();
      FormData formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(
          image.path,
          filename: fileName,
          contentType: MediaType('image', extension),
        ),
      });

      var response = await dio.post(api, data: formData);
      final errorSchema = UploadImageResponse.fromJson(response.data['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return UploadImageResponse.fromJson(response.data['errorSchema']);
      } else {
        return UploadImageResponse.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
    }
    return null;
  }

  Future<UploadImageResponse?> uploadFeeds(File image) async {
    try {
      const api = '/upload/feeds';
      final dio = await DioInstance.getInstance();

      print(image.path);
      String fileName = image.path.split('/').last;
      String extension = fileName.split('.').last.toLowerCase();
      FormData formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(
          image.path,
          filename: fileName,
          contentType: MediaType('image', extension),
        ),
      });
      var response = await dio.post(api, data: formData);
      final errorSchema = UploadImageResponse.fromJson(response.data['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return UploadImageResponse.fromJson(response.data['errorSchema']);
      } else {
        return UploadImageResponse.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
    }
    return null;
  }

}
