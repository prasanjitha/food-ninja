import 'package:flutter/foundation.dart';

@immutable
class NotificationPageState {
  final String error;

  const NotificationPageState({
    required this.error,
  });

  static NotificationPageState get initialState {
    return const NotificationPageState(error: '');
  }

  NotificationPageState clone({
    String? error,
  }) {
    return NotificationPageState(
      error: error ?? this.error,
    );
  }
}
