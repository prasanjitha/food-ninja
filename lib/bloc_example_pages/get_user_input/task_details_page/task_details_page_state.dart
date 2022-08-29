import 'package:flutter/foundation.dart';

@immutable
class TaskDetailsPageState {
  final String error;
  final bool loading;

  const TaskDetailsPageState({
    required this.error,
    required this.loading,
  });

  static TaskDetailsPageState get initialState {
    return const TaskDetailsPageState(error: '', loading: false);
  }

  TaskDetailsPageState clone({
    String? error,
    bool? loading,
  }) {
    return TaskDetailsPageState(
      error: error ?? this.error,
      loading: loading ?? this.loading,
    );
  }
}
