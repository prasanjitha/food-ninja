import 'package:flutter/foundation.dart';

@immutable
class ProductDetailsPageState {
  final String error;

  const ProductDetailsPageState({
    required this.error,
  });

  static ProductDetailsPageState get initialState {
    return const ProductDetailsPageState(error: '');
  }

  ProductDetailsPageState clone({
    String? error,
  }) {
    return ProductDetailsPageState(
      error: error ?? this.error,
    );
  }
}
