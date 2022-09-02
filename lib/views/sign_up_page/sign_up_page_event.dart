import 'package:flutter/foundation.dart';

@immutable
abstract class SignUpPageEvent {}

class SubmitUserDetaEvent extends SignUpPageEvent {
  final String name;
  final String email;
  final String password;
  SubmitUserDetaEvent(
      {required this.email, required this.name, required this.password});
}
