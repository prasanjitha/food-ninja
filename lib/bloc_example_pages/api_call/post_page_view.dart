import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/bloc_example_pages/api_call/post_page_state.dart';
import 'package:food_ninja/bloc_example_pages/get_user_input/task_details_page/task_details_page_event.dart';
import 'package:food_ninja/bloc_example_pages/get_user_input/task_details_page/task_details_page_provider.dart';
import 'package:food_ninja/bloc_example_pages/get_user_input/task_page_state.dart';
import 'package:food_ninja/views/home_page/home_page_state.dart';

import '../get_user_input/task_details_page/task_details_page_bloc.dart';
import 'post_page_bloc.dart';

class PostPageView extends StatefulWidget {
  const PostPageView({Key? key}) : super(key: key);

  @override
  _PostPageViewState createState() => _PostPageViewState();
}

class _PostPageViewState extends State<PostPageView> {
  @override
  Widget build(BuildContext context) {
    PostPageBloc bloc = BlocProvider.of<PostPageBloc>(context);
    TaskDetailsPageBloc postBloc =
        BlocProvider.of<TaskDetailsPageBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " Posts",
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: BlocBuilder<PostPageBloc, PostPageState>(
        buildWhen: (previous, current) => previous.loading != current.loading,
        builder: (context, state) {
          if (state.loading) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
          return ListView.builder(
            itemCount: state.posts.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () async {
                  postBloc.add(GetTaskObjectEvent(posts: state.posts[index]));
                  await Future.delayed(Duration(seconds: 2));
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => TaskDetailsPageProvider())));
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${index + 1} ${state.posts[index].title}',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(state.posts[index].body),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
