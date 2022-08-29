import 'package:flutter/foundation.dart';

@immutable
class TaskPageState {
  final String error;
  final String tp;
  final String note;

  const TaskPageState({
    required this.error,
    required this.tp,
    required this.note,
  });

  static TaskPageState get initialState {
    return const TaskPageState(error: '', tp: '', note: '');
  }

  TaskPageState clone({
    String? error,
    String? tp,
    String? note,
  }) {
    return TaskPageState(
      error: error ?? this.error,
      tp: tp ?? this.tp,
      note: note ?? this.note,
    );
  }
}
