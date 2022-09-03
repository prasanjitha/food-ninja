import 'package:flutter/foundation.dart';

@immutable
abstract class SignINPageEvent {}

class LoginEvent extends SignINPageEvent {
  final String email;
  final String password;
  LoginEvent({required this.email, required this.password});
}
