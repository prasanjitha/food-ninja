import 'package:flutter/foundation.dart';

@immutable
class CallRIngingPageState {
  final String error;

  const CallRIngingPageState({
    required this.error,
  });

  static CallRIngingPageState get initialState {
    return const CallRIngingPageState(error: '');
  }

  CallRIngingPageState clone({
    String? error,
  }) {
    return CallRIngingPageState(
      error: error ?? this.error,
    );
  }
}
