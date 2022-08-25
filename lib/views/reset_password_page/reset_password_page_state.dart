import 'package:flutter/foundation.dart';

@immutable
class ResetPasswordPageState {
  final String error;
  final String newPassword;
  final String conPassword;

  const ResetPasswordPageState({
    required this.error,
    required this.newPassword,
    required this.conPassword,
  });

  static ResetPasswordPageState get initialState {
    return const ResetPasswordPageState(
        error: '', newPassword: '', conPassword: '');
  }

  ResetPasswordPageState clone({
    String? error,
    String? newPassword,
    String? conPassword,
  }) {
    return ResetPasswordPageState(
      error: error ?? this.error,
      newPassword: newPassword ?? this.newPassword,
      conPassword: conPassword ?? this.conPassword,
    );
  }
}
