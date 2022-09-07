import 'package:flutter/foundation.dart';

@immutable
class AddNewProductPageState {
  final String error;
  final String name;
  final String price;
  final bool loading;

  const AddNewProductPageState({
    required this.error,
    required this.name,
    required this.price,
    required this.loading,
  });

  static AddNewProductPageState get initialState {
    return const AddNewProductPageState(
        error: '', name: '', price: '', loading: false);
  }

  AddNewProductPageState clone({
    String? error,
    String? name,
    String? price,
    bool? loading,
  }) {
    return AddNewProductPageState(
      error: error ?? this.error,
      name: name ?? this.name,
      price: price ?? this.price,
      loading: loading ?? this.loading,
    );
  }
}
