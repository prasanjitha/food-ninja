import 'package:flutter/foundation.dart';

@immutable
class EditLocationPageState {
  final String error;

  const EditLocationPageState({
    required this.error,
  });

  static EditLocationPageState get initialState {
    return const EditLocationPageState(error: '');
  }

  EditLocationPageState clone({
    String? error,
  }) {
    return EditLocationPageState(
      error: error ?? this.error,
    );
  }
}
