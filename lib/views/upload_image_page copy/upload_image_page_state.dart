import 'package:flutter/foundation.dart';

@immutable
class UploadImagePageState {
  final String error;
  final bool isLoading;
  final String imgUrl;

  const UploadImagePageState({
    required this.error,
    required this.imgUrl,
    required this.isLoading,
  });

  static UploadImagePageState get initialState {
    return const UploadImagePageState(error: '', isLoading: false, imgUrl: '');
  }

  UploadImagePageState clone({
    String? error,
    bool? isLoading,
    String? imgUrl,
  }) {
    return UploadImagePageState(
      error: error ?? this.error,
      isLoading: isLoading ?? this.isLoading,
      imgUrl: imgUrl ?? this.imgUrl,
    );
  }
}
