import 'package:flutter/foundation.dart';

@immutable
class SignINPageState {
  final String error;

  const SignINPageState({
    required this.error,
  });

  static SignINPageState get initialState {
    return const SignINPageState(error: '');
  }

  SignINPageState clone({
    String? error,
  }) {
    return SignINPageState(
      error: error ?? this.error,
    );
  }
}
