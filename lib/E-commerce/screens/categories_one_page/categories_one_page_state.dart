import 'package:flutter/foundation.dart';

@immutable
class CategoriesOnePageState {
  final String error;

  const CategoriesOnePageState({
    required this.error,
  });

  static CategoriesOnePageState get initialState {
    return const CategoriesOnePageState(error: '');
  }

  CategoriesOnePageState clone({
    String? error,
  }) {
    return CategoriesOnePageState(
      error: error ?? this.error,
    );
  }
}
