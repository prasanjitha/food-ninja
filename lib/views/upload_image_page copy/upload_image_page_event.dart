import 'package:flutter/foundation.dart';

@immutable
abstract class UploadImagePageEvent {}

class UploadImageEvent extends UploadImagePageEvent {}

class DeleteImageEvent extends UploadImagePageEvent {
  final String imageID;
  DeleteImageEvent({required this.imageID});
}
