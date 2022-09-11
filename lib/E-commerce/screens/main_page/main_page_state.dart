import 'package:flutter/foundation.dart';

@immutable
class MainPageState {
  final String error;

  const MainPageState({
    required this.error,
  });

  static MainPageState get initialState {
    return const MainPageState(error: '');
  }

  MainPageState clone({
    String? error,
  }) {
    return MainPageState(
      error: error ?? this.error,
    );
  }
}
