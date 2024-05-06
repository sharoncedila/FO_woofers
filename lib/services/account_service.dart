import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:woofers/classes/dio_instance.dart';
import 'package:woofers/classes/ws_notif_instance.dart';
import 'package:woofers/model/account_model.dart';
import 'package:woofers/main.dart';

class AccountService {
  Future<ResponseLoginModel?> login(RequestLoginModel loginReq) async {
    Response? response;
    try {
      const api = '/accounts/login';
      final dio = await DioInstance.getInstance();

      response = await dio.post(api, data: jsonEncode(loginReq.toJson()));
      final errorSchema =
          ResponseLoginModel.fromJson(response.data['errorSchema']);

      if (errorSchema.errorCode != 'WOF-000') {
        return ResponseLoginModel.fromJson(response.data['errorSchema']);
      } else {
        final accessToken = response.data['outputSchema']['accessToken'];
        final accountId = response.data['outputSchema']['accountId'];
        print(sharedPreference);

        await sharedPreference?.setString('spaccessToken', accessToken);
        if (accountId == null) {
          sharedPreference?.remove(accountId);
        } else {
          await sharedPreference?.setString('accountId', accountId);
          await sharedPreference?.setString('accessToken', accessToken);
          print(sharedPreference?.getString('accountId'));
          print(sharedPreference?.getString('accessToken'));
        }

        await WSNotifInstance.connect();
        DioInstance.setNull();
        return ResponseLoginModel.fromJson(response.data['outputSchema']);
      }
    } on DioException catch (error) {
      print(error);
      //response = error.;
      if (error.response == null) {
        throw Exception("Error, response is null");
      }
      var errorSchema =
          ResponseLoginModel.fromJson(error.response!.data['errorSchema']);
      //print("error schema back end: $errorSchema");
      throw Exception("Please check your inserted email and password");
    }
  }

  Future<LogoutResponse?> logout() async {
    try {
      const api = '/accounts/logout';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema =
          ResponseLoginModel.fromJson(response.data['errorSchema']);

      if (errorSchema.errorCode != 'WOF-000') {
        return LogoutResponse.fromJson(response.data['errorSchema']);
      } else {
        WSNotifInstance.disconnect();
        sharedPreference?.clear();
        DioInstance.setNull();
        final d = sharedPreference;
        return LogoutResponse.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
    }
  }

  Future<ResponseRegisterModel?> register(
      RequestRegisterModel registerReq) async {
    try {
      const api = '/accounts/register';
      final dio = await DioInstance.getInstance();

      var response =
          await dio.post(api, data: jsonEncode(registerReq.toJson()));
      final errorSchema =
          ResponseRegisterModel.fromJson(response.data['errorSchema']);

      if (errorSchema.errorCode != 'WOF-000') {
        return ResponseRegisterModel.fromJson(response.data['errorSchema']);
      } else {
        return ResponseRegisterModel.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
    }
    return null;
  }

  Future<ResponseUserProfileModel?> editAccountProfile(
      EditProfileRequest request) async {
    try {
      const api = '/accounts/profile/edit';
      final dio = await DioInstance.getInstance();

      var response = await dio.post(api, data: jsonEncode(request.toJson()));
      final errorSchema =
          ResponseUserProfileModel.fromJson(response.data['errorSchema']);

      if (errorSchema.errorCode != 'WOF-000') {
        return ResponseUserProfileModel.fromJson(response.data['errorSchema']);
      } else {
        return ResponseUserProfileModel.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
    }
    return null;
  }

  Future<ResponseUserProfileModel?> retrieveUserData() async {
    try {
      const api = '/accounts/profile/view';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema =
          ResponseUserProfileModel.fromJson(response.data!['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return ResponseUserProfileModel.fromJson(response.data['errorSchema']);
      } else {
        return ResponseUserProfileModel.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
    }
    return null;
  }

  Future<OtherUserProfileResponse?> viewOtherUserProfile(
      String accountId) async {
    try {
      String api = '/accounts/profile/other/$accountId';
      final dio = await DioInstance.getInstance();

      var response = await dio.get(api);
      final errorSchema =
          OtherUserProfileResponse.fromJson(response.data!['errorSchema']);
      if (errorSchema.errorCode != 'WOF-000') {
        return OtherUserProfileResponse.fromJson(response.data['errorSchema']);
      } else {
        return OtherUserProfileResponse.fromJson(response.data['outputSchema']);
      }
    } catch (error) {
      print(error);
    }
    return null;
  }
}

// import 'dart:convert';

// import 'package:dio/dio.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:woofers/classes/dio_instance.dart';
// import 'package:woofers/classes/ws_notif_instance.dart';
// import 'package:woofers/model/account_model.dart';

// class AccountService {
//   Future<ResponseLoginModel?> login(RequestLoginModel loginReq) async {
//     Response? response;
//     try {
//       const api = '/accounts/login';
//       final dio = await DioInstance.getInstance();

//       response = await dio.post(api, data: jsonEncode(loginReq.toJson()));
//       print(response);
//       final errorSchema =
//           ResponseLoginModel.fromJson(response.data['errorSchema']);

//       if (errorSchema.errorCode != 'WOF-000') {
//         return ResponseLoginModel.fromJson(response.data['errorSchema']);
//       } else {
//         final accessToken = response.data['outputSchema']['accessToken'];
//         final accountId = response.data['outputSchema']['accountId'];
//         final SharedPreferences prefs = await SharedPreferences.getInstance();
//         await prefs.setString('accessToken', accessToken);
//         await prefs.setString('accountId', accountId);
//         await WSNotifInstance.connect();
//         DioInstance.setNull();
//         return ResponseLoginModel.fromJson(response.data['outputSchema']);
//       }
//     } on DioException catch (error) {
//       print(error);
//       //response = error.;
//       if (error.response == null) {
//         throw Exception("Error, response is null");
//       }
//       var errorSchema =
//           ResponseLoginModel.fromJson(error.response!.data['errorSchema']);
//       //print("error schema back end: $errorSchema");
//       throw Exception(errorSchema.errorMessage);
//     }
//   }

//   Future<LogoutResponse?> logout() async {
//     try {
//       const api = '/accounts/logout';
//       final dio = await DioInstance.getInstance();

//       var response = await dio.get(api);

//       final errorSchema = LogoutResponse.fromJson(response.data['errorSchema']);

//       if (errorSchema.errorCode != 'WOF-000') {
//         return LogoutResponse.fromJson(response.data['errorSchema']);
//       } else {
//         WSNotifInstance.disconnect();
//         final SharedPreferences prefs = await SharedPreferences.getInstance();
//         await prefs.remove('accessToken');
//         await prefs.remove('accountId');
//         return LogoutResponse.fromJson(response.data['outputSchema']);
//       }
//     } catch (error) {
//       print(error);
//     }
//     return null;
//   }

//   Future<ResponseRegisterModel?> register(
//       RequestRegisterModel registerReq) async {
//     try {
//       const api = '/accounts/register';
//       final dio = await DioInstance.getInstance();

//       var response =
//           await dio.post(api, data: jsonEncode(registerReq.toJson()));
//       final errorSchema =
//           ResponseRegisterModel.fromJson(response.data['errorSchema']);

//       if (errorSchema.errorCode != 'WOF-000') {
//         return ResponseRegisterModel.fromJson(response.data['errorSchema']);
//       } else {
//         return ResponseRegisterModel.fromJson(response.data['outputSchema']);
//       }
//     } catch (error) {
//       print(error);
//     }
//     return null;
//   }

//   Future<ResponseUserProfileModel?> editAccountProfile(
//       EditProfileRequest request) async {
//     try {
//       const api = '/accounts/profile/edit';
//       final dio = await DioInstance.getInstance();

//       var response = await dio.post(api, data: jsonEncode(request.toJson()));
//       final errorSchema =
//           ResponseUserProfileModel.fromJson(response.data['errorSchema']);

//       if (errorSchema.errorCode != 'WOF-000') {
//         return ResponseUserProfileModel.fromJson(response.data['errorSchema']);
//       } else {
//         return ResponseUserProfileModel.fromJson(response.data['outputSchema']);
//       }
//     } catch (error) {
//       print(error);
//     }
//     return null;
//   }

//   Future<ResponseUserProfileModel?> retrieveUserData() async {
//     try {
//       const api = '/accounts/profile/view';
//       final dio = await DioInstance.getInstance();

//       var response = await dio.get(api);
//       final errorSchema =
//           ResponseUserProfileModel.fromJson(response.data!['errorSchema']);
//       if (errorSchema.errorCode != 'WOF-000') {
//         return ResponseUserProfileModel.fromJson(response.data['errorSchema']);
//       } else {
//         return ResponseUserProfileModel.fromJson(response.data['outputSchema']);
//       }
//     } catch (error) {
//       print(error);
//     }
//     return null;
//   }

//   Future<OtherUserProfileResponse?> viewOtherUserProfile(
//       String accountId) async {
//     try {
//       String api = '/accounts/profile/other/$accountId';
//       final dio = await DioInstance.getInstance();

//       var response = await dio.get(api);
//       final errorSchema =
//           OtherUserProfileResponse.fromJson(response.data!['errorSchema']);
//       if (errorSchema.errorCode != 'WOF-000') {
//         return OtherUserProfileResponse.fromJson(response.data['errorSchema']);
//       } else {
//         return OtherUserProfileResponse.fromJson(response.data['outputSchema']);
//       }
//     } catch (error) {
//       print(error);
//     }
//     return null;
//   }
// }