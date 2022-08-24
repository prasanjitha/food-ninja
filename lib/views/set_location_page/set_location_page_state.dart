import 'package:flutter/foundation.dart';

@immutable
class SetLocationPageState {
  final String error;

  const SetLocationPageState({
    required this.error,
  });

  static SetLocationPageState get initialState {
    return const SetLocationPageState(error: '');
  }

  SetLocationPageState clone({
    String? error,
  }) {
    return SetLocationPageState(
      error: error ?? this.error,
    );
  }
}
