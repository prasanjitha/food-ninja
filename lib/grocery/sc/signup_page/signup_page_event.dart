import 'package:flutter/foundation.dart';

@immutable
abstract class SignUpPageEvent {}

class SignUpEvent extends SignUpPageEvent {
  final String name;
  final String surname;
  final String email;
  SignUpEvent({required this.name, required this.surname, required this.email});
}
