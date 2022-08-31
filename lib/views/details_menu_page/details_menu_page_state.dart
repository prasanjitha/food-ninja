import 'package:flutter/foundation.dart';

@immutable
class DetailsMenuPageState {
  final String error;

  const DetailsMenuPageState({
    required this.error,
  });

  static DetailsMenuPageState get initialState {
    return const DetailsMenuPageState(error: '');
  }

  DetailsMenuPageState clone({
    String? error,
  }) {
    return DetailsMenuPageState(
      error: error ?? this.error,
    );
  }
}
