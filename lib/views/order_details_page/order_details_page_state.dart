import 'package:flutter/foundation.dart';

@immutable
class OrdrDetailsPageState {
  final String error;

  const OrdrDetailsPageState({
    required this.error,
  });

  static OrdrDetailsPageState get initialState {
    return const OrdrDetailsPageState(error: '');
  }

  OrdrDetailsPageState clone({
    String? error,
  }) {
    return OrdrDetailsPageState(
      error: error ?? this.error,
    );
  }
}
