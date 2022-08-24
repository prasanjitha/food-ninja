import 'package:flutter/foundation.dart';

@immutable
class UploadImagePageState {
  final String error;

  const UploadImagePageState({
    required this.error,
  });

  static UploadImagePageState get initialState {
    return const UploadImagePageState(error: '');
  }

  UploadImagePageState clone({
    String? error,
  }) {
    return UploadImagePageState(
      error: error ?? this.error,
    );
  }
}
