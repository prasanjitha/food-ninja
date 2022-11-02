import 'package:flutter/foundation.dart';

@immutable
class YourOrdersPageState {
  final String error;

  const YourOrdersPageState({
    required this.error,
  });

  static YourOrdersPageState get initialState {
    return const YourOrdersPageState(error: '');
  }

  YourOrdersPageState clone({
    String? error,
  }) {
    return YourOrdersPageState(
      error: error ?? this.error,
    );
  }
}
