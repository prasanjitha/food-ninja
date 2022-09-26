import 'package:flutter/foundation.dart';
import 'package:food_ninja/models/Post.dart';

@immutable
class TeaHomePageState {
  final String error;
  final bool isLoading;
  final List<Post> posts;
  const TeaHomePageState({
    required this.error,
    required this.posts,
    required this.isLoading,
  });

  static TeaHomePageState get initialState {
    return const TeaHomePageState(
      error: '',
      posts: [],
      isLoading: false,
    );
  }

  TeaHomePageState clone({
    String? error,
    List<Post>? posts,
    bool? isLoading,
  }) {
    return TeaHomePageState(
      error: error ?? this.error,
      posts: posts ?? this.posts,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
