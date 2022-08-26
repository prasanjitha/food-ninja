import 'package:flutter/foundation.dart';

@immutable
class FinishOrderPageState {
  final String error;

  const FinishOrderPageState({
    required this.error,
  });

  static FinishOrderPageState get initialState {
    return const FinishOrderPageState(error: '');
  }

  FinishOrderPageState clone({
    String? error,
  }) {
    return FinishOrderPageState(
      error: error ?? this.error,
    );
  }
}
