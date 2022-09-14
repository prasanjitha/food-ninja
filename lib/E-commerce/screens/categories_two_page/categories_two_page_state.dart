import 'package:flutter/foundation.dart';

@immutable
class CategoriesTwoPageState {
  final String error;

  const CategoriesTwoPageState({
    required this.error,
  });

  static CategoriesTwoPageState get initialState {
    return const CategoriesTwoPageState(error: '');
  }

  CategoriesTwoPageState clTwo({
    String? error,
  }) {
    return CategoriesTwoPageState(
      error: error ?? this.error,
    );
  }
}
