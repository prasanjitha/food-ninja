import 'package:flutter/foundation.dart';

@immutable
class CallingPageState {
  final String error;

  const CallingPageState({
    required this.error,
  });

  static CallingPageState get initialState {
    return const CallingPageState(error: '');
  }

  CallingPageState clone({
    String? error,
  }) {
    return CallingPageState(
      error: error ?? this.error,
    );
  }
}
