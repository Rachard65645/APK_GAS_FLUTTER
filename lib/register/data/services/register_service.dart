import 'package:dio/dio.dart';

class RegisterService {
  final Dio dio;

  RegisterService({required this.dio});

  Future<dynamic> register({
    
    required String name,
    required String email,
    required String password,
    required String city,
    required String phone,
    required String adress,
    
    }) async {
    Response response = await dio.post(
      
    '/register', 
    data: {
      'name': name,
      'email': email,
      'password': password,
      'city': city,
      'phone': phone,
      'adress': adress, 
    
    });
    return response.data;
  }
}
