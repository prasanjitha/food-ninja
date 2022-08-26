import 'package:flutter/foundation.dart';

@immutable
class ExploreResturantWithFilterPageState {
  final String error;

  const ExploreResturantWithFilterPageState({
    required this.error,
  });

  static ExploreResturantWithFilterPageState get initialState {
    return const ExploreResturantWithFilterPageState(error: '');
  }

  ExploreResturantWithFilterPageState clone({
    String? error,
  }) {
    return ExploreResturantWithFilterPageState(
      error: error ?? this.error,
    );
  }
}
