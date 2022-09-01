import 'package:flutter/foundation.dart';
import 'package:food_ninja/models/Todos.dart';

@immutable
class ProfileDetailsPageState {
  final String error;
  final List<Todos> todos;
  final bool isLoading;

  const ProfileDetailsPageState({
    required this.error,
    required this.todos,
    required this.isLoading,
  });

  static ProfileDetailsPageState get initialState {
    return const ProfileDetailsPageState(
        error: '', todos: [], isLoading: false);
  }

  ProfileDetailsPageState clone({
    String? error,
    List<Todos>? todos,
    bool? isLoading,
  }) {
    return ProfileDetailsPageState(
      error: error ?? this.error,
      todos: todos ?? this.todos,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
