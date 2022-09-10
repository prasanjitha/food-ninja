import 'package:flutter/foundation.dart';

@immutable
abstract class SignInPageEvent {}

class SubmitUserDataEvent extends SignInPageEvent {
  final String email;
  final String password;

  SubmitUserDataEvent({required this.email, required this.password});
}
