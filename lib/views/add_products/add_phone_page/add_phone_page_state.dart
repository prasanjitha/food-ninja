import 'package:flutter/foundation.dart';
import 'package:food_ninja/views/add_products/add_phone_page/add_phone_page_view.dart';

@immutable
class AddPhonePageState {
  final String error;
  final List<String> message;
  final bool isLoading;
  final String imgUrl;

  const AddPhonePageState({
    required this.error,
    required this.message,
    required this.isLoading,
    required this.imgUrl,
  });

  static AddPhonePageState get initialState {
    return const AddPhonePageState(
        error: '', message: [], isLoading: false, imgUrl: '');
  }

  AddPhonePageState clone({
    String? error,
    List<String>? message,
    bool? isLoading,
    String? imgUrl,
  }) {
    return AddPhonePageState(
      error: error ?? this.error,
      message: message ?? this.message,
      isLoading: isLoading ?? this.isLoading,
      imgUrl: imgUrl ?? this.imgUrl,
    );
  }
}
