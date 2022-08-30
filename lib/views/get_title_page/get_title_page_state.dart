import 'package:flutter/foundation.dart';
import 'package:food_ninja/models/Title.dart';

@immutable
class GetTitlePageState {
  final String error;
  final bool isLoading;
  final List<TitleModel> myTitles;

  const GetTitlePageState({
    required this.error,
    required this.isLoading,
    required this.myTitles,
  });

  static GetTitlePageState get initialState {
    return const GetTitlePageState(error: '', isLoading: false, myTitles: []);
  }

  GetTitlePageState clone({
    String? error,
    bool? isLoading,
    List<TitleModel>? myTitles,
  }) {
    return GetTitlePageState(
      error: error ?? this.error,
      isLoading: isLoading ?? this.isLoading,
      myTitles: myTitles ?? this.myTitles,
    );
  }
}
