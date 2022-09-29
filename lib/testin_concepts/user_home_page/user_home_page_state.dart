import 'package:flutter/foundation.dart';

@immutable
class UserHomePageState {
  final String error;
  final String username;

  const UserHomePageState({
    required this.error,
    required this.username,
  });

  static UserHomePageState get initialState {
    return const UserHomePageState(error: '', username: '');
  }

  UserHomePageState clone({
    String? error,
    String? username,
  }) {
    return UserHomePageState(
      error: error ?? this.error,
      username: username ?? this.username,
    );
  }
}
