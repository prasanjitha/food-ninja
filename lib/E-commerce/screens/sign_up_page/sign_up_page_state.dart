import 'package:flutter/foundation.dart';

@immutable
class SignUpPageState {
  final String error;
  final bool isLoading;

  const SignUpPageState({
    required this.error,
    required this.isLoading,
  });

  static SignUpPageState get initialState {
    return const SignUpPageState(error: '', isLoading: false);
  }

  SignUpPageState clone({
    String? error,
    bool? isLoading,
  }) {
    return SignUpPageState(
      error: error ?? this.error,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
