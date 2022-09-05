import 'package:flutter/foundation.dart';
import 'package:food_ninja/views/add_products/add_phone_page/add_phone_page_view.dart';

@immutable
class AddPhonePageState {
  final String error;
  final List<String> message;
  final bool isLoading;

  const AddPhonePageState({
    required this.error,
    required this.message,
    required this.isLoading,
  });

  static AddPhonePageState get initialState {
    return const AddPhonePageState(error: '', message: [], isLoading: false);
  }

  AddPhonePageState clone({
    String? error,
    List<String>? message,
    bool? isLoading,
  }) {
    return AddPhonePageState(
      error: error ?? this.error,
      message: message ?? this.message,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
