import 'package:flutter/foundation.dart';

@immutable
abstract class SignINPageEvent {}

class LoginEvent extends SignINPageEvent {
  final String email;
  final String password;
  LoginEvent({required this.email, required this.password});
}

class NotificationsLoginEvent extends SignINPageEvent {
  final String email;
  final String password;
  NotificationsLoginEvent({required this.email, required this.password});
}
