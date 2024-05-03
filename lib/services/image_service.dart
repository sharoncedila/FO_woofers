import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/model/error_schema_model.dart';
import 'package:woofers/model/image_model.dart';

class ImageService {
  Future<UploadImageResponse?> uploadProfilePicture() async {
    try {
      const api = '/upload/account';
      final dio = await DioInstance.getInstance();
      final pickedFile =
          await ImagePicker().pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        File image = File(pickedFile.path);
        String fileName = image.path.split('/').last;
        FormData formData = FormData.fromMap({
          'file': await MultipartFile.fromFile(image.path, filename: fileName),
        });
        var response = await dio.post(api, data: formData);
        final errorSchema = ErrorSchema.fromJson(response.data['errorSchema']);
        if (errorSchema.errorCode != 'WOF-000') {
          return UploadImageResponse.fromJson(
              response.data['errorSchema']);
        } else {
          return UploadImageResponse.fromJson(
              response.data['outputSchema']);
        }
      } else {
        print('no file chosen');
      }
    } catch (error) {
      print(error);
    }
  }

  Future<UploadImageResponse?> uploadFeeds() async {
    try {
      const api = '/upload/feeds';
      final dio = await DioInstance.getInstance();
      final pickedFile =
          await ImagePicker().pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        File image = File(pickedFile.path);
        String fileName = image.path.split('/').last;
        FormData formData = FormData.fromMap({
          'file': await MultipartFile.fromFile(image.path, filename: fileName),
        });
        var response = await dio.post(api, data: formData);
        final errorSchema = ErrorSchema.fromJson(response.data['errorSchema']);
        if (errorSchema.errorCode != 'WOF-000') {
          return UploadImageResponse.fromJson(
              response.data['errorSchema']);
        } else {
          return UploadImageResponse.fromJson(
              response.data['outputSchema']);
        }
      } else {
        print('no file chosen');
      }
    } catch (error) {
      print(error);
    }
  }

  Future<UploadImageResponse?> uploadDogImage(String dogId) async {
    try {
      String api = '/upload/dog/$dogId';
      final dio = await DioInstance.getInstance();
      final pickedFile =
          await ImagePicker().pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        File image = File(pickedFile.path);
        String fileName = image.path.split('/').last;
        FormData formData = FormData.fromMap({
          'file': await MultipartFile.fromFile(image.path, filename: fileName),
        });
        var response = await dio.post(api, data: formData);
        final errorSchema = ErrorSchema.fromJson(response.data['errorSchema']);
        if (errorSchema.errorCode != 'WOF-000') {
          return UploadImageResponse.fromJson(
              response.data['errorSchema']);
        } else {
          return UploadImageResponse.fromJson(
              response.data['outputSchema']);
        }
      } else {
        print('no file chosen');
      }
    } catch (error) {
      print(error);
    }
  }
}
