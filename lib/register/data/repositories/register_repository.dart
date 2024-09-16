import 'package:project/register/data/models/register_model.dart';
import 'package:project/register/data/services/register_service.dart';

class RegisterRepository {
  final RegisterService service;

  RegisterRepository({required this.service});

  Future<User> register({
    required String name,
    required String email,
    required String password,
    required String city,
    required String phone,
    required String adress,
  }) async {
    var data = await service.register(
        name: name,
        email: email,
        password: password,
        city: city,
        phone: phone,
        adress: adress);
    return User.fromJson(data);
  }
}
