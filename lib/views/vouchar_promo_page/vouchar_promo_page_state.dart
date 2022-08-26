import 'package:flutter/foundation.dart';

@immutable
class VoucharPromoPageState {
  final String error;

  const VoucharPromoPageState({
    required this.error,
  });

  static VoucharPromoPageState get initialState {
    return const VoucharPromoPageState(error: '');
  }

  VoucharPromoPageState clone({
    String? error,
  }) {
    return VoucharPromoPageState(
      error: error ?? this.error,
    );
  }
}
