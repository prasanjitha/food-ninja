import 'package:flutter/foundation.dart';

@immutable
class FilterPageState {
  final String error;

  const FilterPageState({
    required this.error,
  });

  static FilterPageState get initialState {
    return const FilterPageState(error: '');
  }

  FilterPageState clone({
    String? error,
  }) {
    return FilterPageState(
      error: error ?? this.error,
    );
  }
}
