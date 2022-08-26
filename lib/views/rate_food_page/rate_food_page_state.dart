import 'package:flutter/foundation.dart';

@immutable
class RateFoodPageState {
  final String error;

  const RateFoodPageState({
    required this.error,
  });

  static RateFoodPageState get initialState {
    return const RateFoodPageState(error: '');
  }

  RateFoodPageState clone({
    String? error,
  }) {
    return RateFoodPageState(
      error: error ?? this.error,
    );
  }
}
