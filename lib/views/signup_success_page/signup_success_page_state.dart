import 'package:flutter/foundation.dart';

@immutable
class SignUpSuccessPageState {
  final String error;

  const SignUpSuccessPageState({
    required this.error,
  });

  static SignUpSuccessPageState get initialState {
    return const SignUpSuccessPageState(error: '');
  }

  SignUpSuccessPageState clone({
    String? error,
  }) {
    return SignUpSuccessPageState(
      error: error ?? this.error,
    );
  }
}
