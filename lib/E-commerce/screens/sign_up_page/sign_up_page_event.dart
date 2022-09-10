import 'package:flutter/foundation.dart';

@immutable
abstract class SignUpPageEvent {}

class SubmitUserDataEvent extends SignUpPageEvent {
  final String name;
  final String email;
  final String password;

  SubmitUserDataEvent(
      {required this.email, required this.name, required this.password});
}
