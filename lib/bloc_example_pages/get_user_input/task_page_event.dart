import 'package:flutter/foundation.dart';

@immutable
abstract class TaskPageEvent {}

class ChangeTPEvent extends TaskPageEvent {
  final String tp;

  ChangeTPEvent(this.tp);
}

class ChangeSpecialNoteEvent extends TaskPageEvent {
  final String specialNote;

  ChangeSpecialNoteEvent(this.specialNote);
}

class PressDoneEvent extends TaskPageEvent {}
