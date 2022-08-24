import 'package:flutter/foundation.dart';

@immutable
class PaymentMethodPageState {
  final String error;

  const PaymentMethodPageState({
    required this.error,
  });

  static PaymentMethodPageState get initialState {
    return const PaymentMethodPageState(error: '');
  }

  PaymentMethodPageState clone({
    String? error,
  }) {
    return PaymentMethodPageState(
      error: error ?? this.error,
    );
  }
}
