import 'package:flutter/foundation.dart';

@immutable
class RateResturantPageState {
  final String error;

  const RateResturantPageState({
    required this.error,
  });

  static RateResturantPageState get initialState {
    return const RateResturantPageState(error: '');
  }

  RateResturantPageState clone({
    String? error,
  }) {
    return RateResturantPageState(
      error: error ?? this.error,
    );
  }
}
