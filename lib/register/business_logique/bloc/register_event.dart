part of 'register_bloc.dart';

@immutable
sealed class RegisterEvent {}

// ignore: camel_case_types
class regisAuthterEvent extends RegisterEvent {
  final String name;
  final String email;
  final String password;
  final String phone;
  final String city;
  final String address;

  regisAuthterEvent({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.address,
    required this.city,
  });
}
