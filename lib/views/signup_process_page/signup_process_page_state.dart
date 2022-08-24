import 'package:flutter/foundation.dart';

@immutable
class SignupProcessPageState {
  final String error;

  const SignupProcessPageState({
    required this.error,
  });

  static SignupProcessPageState get initialState {
    return const SignupProcessPageState(error: '');
  }

  SignupProcessPageState clone({
    String? error,
  }) {
    return SignupProcessPageState(
      error: error ?? this.error,
    );
  }
}
