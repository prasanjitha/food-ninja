import 'package:flutter/foundation.dart';

@immutable
class AddPhonePageState {
  final String error;

  const AddPhonePageState({
    required this.error,
  });

  static AddPhonePageState get initialState {
    return const AddPhonePageState(error: '');
  }

  AddPhonePageState clone({
    String? error,
  }) {
    return AddPhonePageState(
      error: error ?? this.error,
    );
  }
}
