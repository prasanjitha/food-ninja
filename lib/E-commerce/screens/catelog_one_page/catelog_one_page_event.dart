import 'package:flutter/foundation.dart';

@immutable
abstract class CatelogOnePageEvent {}

class ChangeFavoriteIconStateEvent extends CatelogOnePageEvent {
  final bool isFav;
  ChangeFavoriteIconStateEvent({required this.isFav});
}
