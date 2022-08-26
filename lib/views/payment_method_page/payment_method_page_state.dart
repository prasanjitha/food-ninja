import 'package:flutter/foundation.dart';

@immutable
class PaymentMethodPageState {
  final String error;
  final String paymentMethod;
  final bool isLoading;

  const PaymentMethodPageState({
    required this.error,
    required this.paymentMethod,
    required this.isLoading,
  });

  static PaymentMethodPageState get initialState {
    return const PaymentMethodPageState(
        error: '', paymentMethod: '', isLoading: false);
  }

  PaymentMethodPageState clone({
    String? error,
    String? paymentMethod,
    bool? isLoading,
  }) {
    return PaymentMethodPageState(
      error: error ?? this.error,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
