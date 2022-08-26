import 'package:flutter/foundation.dart';

@immutable
class SignupProcessPageState {
  final String error;
  final String firstName;
  final String lastName;
  final String mobile;

  const SignupProcessPageState({
    required this.error,
    required this.firstName,
    required this.lastName,
    required this.mobile,
  });

  static SignupProcessPageState get initialState {
    return const SignupProcessPageState(
      error: '',
      firstName: '',
      lastName: '',
      mobile: '',
    );
  }

  SignupProcessPageState clone({
    String? error,
    String? firstName,
    String? lastName,
    String? mobile,
  }) {
    return SignupProcessPageState(
      error: error ?? this.error,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      mobile: mobile ?? this.mobile,
    );
  }
}
