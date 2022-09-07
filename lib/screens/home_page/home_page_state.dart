import 'package:flutter/foundation.dart';

@immutable
class HomePageState {
  final String error;
  final String name;
  final String price;
  final bool loading;
  const HomePageState({
    required this.error,
    required this.name,
    required this.price,
    required this.loading,
  });

  static HomePageState get initialState {
    return const HomePageState(error: '', price: '', name: '', loading: false);
  }

  HomePageState clone({
    String? error,
    String? name,
    String? price,
    bool? loading,
  }) {
    return HomePageState(
      error: error ?? this.error,
      name: name ?? this.name,
      price: price ?? this.price,
      loading: loading ?? this.loading,
    );
  }
}
