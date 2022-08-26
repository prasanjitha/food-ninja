import 'package:flutter/foundation.dart';

@immutable
class ExploreMenuPageState {
  final String error;

  const ExploreMenuPageState({
    required this.error,
  });

  static ExploreMenuPageState get initialState {
    return const ExploreMenuPageState(error: '');
  }

  ExploreMenuPageState clone({
    String? error,
  }) {
    return ExploreMenuPageState(
      error: error ?? this.error,
    );
  }
}
