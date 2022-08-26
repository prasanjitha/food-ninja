import 'package:flutter/foundation.dart';

@immutable
abstract class PaymentMethodPageEvent {}

class ChoosePaymentMethod extends PaymentMethodPageEvent {
  final String method;

  ChoosePaymentMethod({
    required this.method,
  });
}

class NamePaymentMethod extends PaymentMethodPageEvent {
  final String name;
  NamePaymentMethod({
    required this.name,
  });
}
