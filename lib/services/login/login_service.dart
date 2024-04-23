import 'package:dio/dio.dart';
import 'package:woofers/class/account.dart';
import 'package:woofers/class/dio_instance.dart';
// import 'package:woofers/interfaces/login/login_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginService {
  @override
  Future<Account?> login(String email, String password) async{
    try {
      const api = '/woofers/accounts/login';
      final data = {
        "email" : email,
        "password" : password
      };

  
      final dio = await DioInstance.getInstance();
      dio.options.connectTimeout = const Duration(milliseconds: 5000);
      Response response;
      response = await dio.post(api, data:data);


  
      if(response.statusCode == 200){
        final body = response.data;
        final account = Account(accountId: body['account_id'], accessToken: body['access_token']);
        // set dio instane = null
        // await prefs.setString('accessToken', accessToken: body['access_token']);
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('access_token', account.accessToken ?? "");
        return account;

      }
      return null;

    }catch(e){
    // TODO
    // throw Exception(e.toString());
    }
  }
}