import 'package:flutter/foundation.dart';

@immutable
abstract class ImagePreviewPageEvent {}

class GetImageUrl extends ImagePreviewPageEvent {
  final String imgUrl;
  GetImageUrl({required this.imgUrl});
}

class InitEvent extends ImagePreviewPageEvent {}
