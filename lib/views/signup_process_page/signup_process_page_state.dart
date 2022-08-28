import 'package:flutter/foundation.dart';
import 'package:food_ninja/models/user_data.dart';

@immutable
class SignupProcessPageState {
  final String error;
  final String firstName;
  final String lastName;
  final String mobile;
  final List<UserData> users;
  final bool isLoading;

  const SignupProcessPageState({
    required this.error,
    required this.firstName,
    required this.lastName,
    required this.mobile,
    required this.users,
    required this.isLoading,
  });

  static SignupProcessPageState get initialState {
    return const SignupProcessPageState(
        error: '',
        firstName: '',
        lastName: '',
        mobile: '',
        users: [],
        isLoading: false);
  }

  SignupProcessPageState clone({
    String? error,
    String? firstName,
    String? lastName,
    String? mobile,
    List<UserData>? users,
    bool? isLoading,
  }) {
    return SignupProcessPageState(
      error: error ?? this.error,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      mobile: mobile ?? this.mobile,
      users: users ?? this.users,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
