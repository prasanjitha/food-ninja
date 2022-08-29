import 'package:flutter/foundation.dart';

@immutable
class PaymentsPageState {
  final String error;

  const PaymentsPageState({
    required this.error,
  });

  static PaymentsPageState get initialState {
    return const PaymentsPageState(error: '');
  }

  PaymentsPageState clone({
    String? error,
  }) {
    return PaymentsPageState(
      error: error ?? this.error,
    );
  }
}
