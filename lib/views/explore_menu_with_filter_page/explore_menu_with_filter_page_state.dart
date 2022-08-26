import 'package:flutter/foundation.dart';

@immutable
class ExploreMenuWithFilterPageState {
  final String error;

  const ExploreMenuWithFilterPageState({
    required this.error,
  });

  static ExploreMenuWithFilterPageState get initialState {
    return const ExploreMenuWithFilterPageState(error: '');
  }

  ExploreMenuWithFilterPageState clone({
    String? error,
  }) {
    return ExploreMenuWithFilterPageState(
      error: error ?? this.error,
    );
  }
}
