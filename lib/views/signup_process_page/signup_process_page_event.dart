import 'package:flutter/foundation.dart';

@immutable
abstract class SignupProcessPageEvent {}

class GetUserInputEvent extends SignupProcessPageEvent {
  final String fistName;
  final String lastName;
  final String mobile;
  GetUserInputEvent({
    required this.fistName,
    required this.lastName,
    required this.mobile,
  });
}
