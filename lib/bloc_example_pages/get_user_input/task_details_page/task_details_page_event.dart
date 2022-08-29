import 'package:flutter/foundation.dart';
import 'package:food_ninja/models/Post.dart';

@immutable
abstract class TaskDetailsPageEvent {}

class GetTaskObjectEvent extends TaskDetailsPageEvent {
  final Post posts;
  GetTaskObjectEvent({required this.posts});
}
