import 'package:dio/dio.dart';
import 'package:woofers/class/account.dart';

abstract class ILogin{
  Future<Account?> login(String email, String password) async{
    try {
      const api = 'http://192.168.2.200:8081/woofers/accounts/login';
      final data = {
        "email" : email,
        "password" : password
      };
  
      final dio = Dio();
      Response response;
      response = await dio.post(api, data:data);

      if(response.statusCode == 200){
        final body = response.data;
        return Account(accountId: body['account_id'], accessToken: body['access_token']);
      }else{
        // handling unsuccessful login attempt
        return null;
      }

    }catch(e){
      // TODO
      throw Exception(e.toString());
    }
  }
}