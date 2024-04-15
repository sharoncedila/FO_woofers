import 'package:dio/dio.dart';
import 'package:woofers/class/account.dart';
import 'package:woofers/interfaces/register/register_interface.dart';

class RegisterService extends IRegister{
  @override
  Future<Account?> register(String username, String email, String provinceName, String phoneNumber, String Password) async{
    try {
      const api = 'http://192.168.100.10:8081/woofers/accounts/register';
      final data = {
        "username" : username,
        "email" : email,
        "province_name" : provinceName,
        "phone_number" : phoneNumber,
        "password" : Password
      };
  
      final dio = Dio();
      Response response;
      response = await dio.post(api, data:data);

      if(response.statusCode == 200){
        final body = response.data;
        return Account(accountId: body['account_id'], username: body['username'], email: body['email'], provinceName: body['province_name'], phoneNumber: body['phone_number']);
      }else{
        return null;
      }

    }catch(e){
      // TODO
      throw Exception(e.toString());
    }
  }
}