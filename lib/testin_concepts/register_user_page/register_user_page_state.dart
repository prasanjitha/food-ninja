import 'package:flutter/foundation.dart';

@immutable
class RegisterUserPageState {
  final String error;

  const RegisterUserPageState({
    required this.error,
  });

  static RegisterUserPageState get initialState {
    return const RegisterUserPageState(error: '');
  }

  RegisterUserPageState clone({
    String? error,
  }) {
    return RegisterUserPageState(
      error: error ?? this.error,
    );
  }
}
