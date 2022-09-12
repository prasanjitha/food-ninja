import 'package:flutter/foundation.dart';

@immutable
class MainPageOneState {
  final String error;

  const MainPageOneState({
    required this.error,
  });

  static MainPageOneState get initialState {
    return const MainPageOneState(error: '');
  }

  MainPageOneState clone({
    String? error,
  }) {
    return MainPageOneState(
      error: error ?? this.error,
    );
  }
}
