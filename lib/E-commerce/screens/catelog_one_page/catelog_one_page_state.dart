import 'package:flutter/foundation.dart';

@immutable
class CatelogOnePageState {
  final String error;
  final bool init;

  const CatelogOnePageState({
    required this.error,
    required this.init,
  });

  static CatelogOnePageState get initialState {
    return const CatelogOnePageState(error: '', init: false);
  }

  CatelogOnePageState clone({
    String? error,
    bool? init,
  }) {
    return CatelogOnePageState(
      error: error ?? this.error,
      init: init ?? this.init,
    );
  }
}
