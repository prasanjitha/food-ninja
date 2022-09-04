import 'package:flutter/foundation.dart';

@immutable
class ImagePreviewPageState {
  final String error;
  final String imageUrl;
  final bool loadin;

  const ImagePreviewPageState({
    required this.error,
    required this.imageUrl,
    required this.loadin,
  });

  static ImagePreviewPageState get initialState {
    return const ImagePreviewPageState(error: '', imageUrl: '', loadin: false);
  }

  ImagePreviewPageState clone({
    String? error,
    String? imageUrl,
    bool? loadin,
  }) {
    return ImagePreviewPageState(
      error: error ?? this.error,
      imageUrl: imageUrl ?? this.imageUrl,
      loadin: loadin ?? this.loadin,
    );
  }
}
