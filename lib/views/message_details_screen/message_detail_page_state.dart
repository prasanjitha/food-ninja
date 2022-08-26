import 'package:flutter/foundation.dart';

@immutable
class MessageDetailsPageState {
  final String error;

  const MessageDetailsPageState({
    required this.error,
  });

  static MessageDetailsPageState get initialState {
    return const MessageDetailsPageState(error: '');
  }

  MessageDetailsPageState clone({
    String? error,
  }) {
    return MessageDetailsPageState(
      error: error ?? this.error,
    );
  }
}
