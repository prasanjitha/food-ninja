import 'package:flutter/foundation.dart';
import 'package:food_ninja/models/Title.dart';

@immutable
class GetTitleDetailsPageState {
  final String error;
  final bool isLoading;
  final List<TitleModel> myTitles;

  const GetTitleDetailsPageState({
    required this.error,
    required this.isLoading,
    required this.myTitles,
  });

  static GetTitleDetailsPageState get initialState {
    return const GetTitleDetailsPageState(
        error: '', isLoading: false, myTitles: []);
  }

  GetTitleDetailsPageState clone({
    String? error,
    bool? isLoading,
    List<TitleModel>? myTitles,
  }) {
    return GetTitleDetailsPageState(
      error: error ?? this.error,
      isLoading: isLoading ?? this.isLoading,
      myTitles: myTitles ?? this.myTitles,
    );
  }
}
