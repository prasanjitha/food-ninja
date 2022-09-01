import 'package:flutter/foundation.dart';

@immutable
class ProfileDetailsPageState {
  final String error;

  const ProfileDetailsPageState({
    required this.error,
  });

  static ProfileDetailsPageState get initialState {
    return const ProfileDetailsPageState(error: '');
  }

  ProfileDetailsPageState clone({
    String? error,
  }) {
    return ProfileDetailsPageState(
      error: error ?? this.error,
    );
  }
}
