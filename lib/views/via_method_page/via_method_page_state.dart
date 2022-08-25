import 'package:flutter/foundation.dart';

@immutable
class ViaMethodPageState {
  final String error;

  const ViaMethodPageState({
    required this.error,
  });

  static ViaMethodPageState get initialState {
    return const ViaMethodPageState(error: '');
  }

  ViaMethodPageState clone({
    String? error,
  }) {
    return ViaMethodPageState(
      error: error ?? this.error,
    );
  }
}
