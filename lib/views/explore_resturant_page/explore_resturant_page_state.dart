import 'package:flutter/foundation.dart';

@immutable
class ExploreResturantPageState {
  final String error;

  const ExploreResturantPageState({
    required this.error,
  });

  static ExploreResturantPageState get initialState {
    return const ExploreResturantPageState(error: '');
  }

  ExploreResturantPageState clone({
    String? error,
  }) {
    return ExploreResturantPageState(
      error: error ?? this.error,
    );
  }
}
