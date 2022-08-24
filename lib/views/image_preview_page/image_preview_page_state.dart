import 'package:flutter/foundation.dart';

@immutable
class ImagePreviewPageState {
  final String error;

  const ImagePreviewPageState({
    required this.error,
  });

  static ImagePreviewPageState get initialState {
    return const ImagePreviewPageState(error: '');
  }

  ImagePreviewPageState clone({
    String? error,
  }) {
    return ImagePreviewPageState(
      error: error ?? this.error,
    );
  }
}
