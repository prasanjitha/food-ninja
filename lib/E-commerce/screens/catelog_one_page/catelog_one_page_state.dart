import 'package:flutter/foundation.dart';

@immutable
class CatelogOnePageState {
  final String error;

  const CatelogOnePageState({
    required this.error,
  });

  static CatelogOnePageState get initialState {
    return const CatelogOnePageState(error: '');
  }

  CatelogOnePageState clone({
    String? error,
  }) {
    return CatelogOnePageState(
      error: error ?? this.error,
    );
  }
}
