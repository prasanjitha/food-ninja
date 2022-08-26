import 'package:flutter/foundation.dart';

@immutable
class MessagePageState {
  final String error;

  const MessagePageState({
    required this.error,
  });

  static MessagePageState get initialState {
    return const MessagePageState(error: '');
  }

  MessagePageState clone({
    String? error,
  }) {
    return MessagePageState(
      error: error ?? this.error,
    );
  }
}
