import 'package:flutter/foundation.dart';
import 'package:food_ninja/models/Post.dart';

@immutable
class PostPageState {
  final String error;
  final List<Post> posts;
  final bool loading;

  const PostPageState({
    required this.error,
    required this.posts,
    required this.loading,
  });

  static PostPageState get initialState {
    return const PostPageState(error: '', posts: [], loading: false);
  }

  PostPageState clone({
    String? error,
    List<Post>? posts,
    bool? loading,
  }) {
    return PostPageState(
      error: error ?? this.error,
      posts: posts ?? this.posts,
      loading: loading ?? this.loading,
    );
  }
}
