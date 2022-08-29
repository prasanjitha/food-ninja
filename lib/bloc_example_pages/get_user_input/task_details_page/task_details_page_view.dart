import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/bloc_example_pages/get_user_input/task_details_page/task_details_page_state.dart';

import 'task_details_page_bloc.dart';

class TaskDetailsPageView extends StatefulWidget {
  const TaskDetailsPageView({Key? key}) : super(key: key);

  @override
  _TaskDetailsPageViewState createState() => _TaskDetailsPageViewState();
}

class _TaskDetailsPageViewState extends State<TaskDetailsPageView> {
  @override
  Widget build(BuildContext context) {
    TaskDetailsPageBloc postBloc =
        BlocProvider.of<TaskDetailsPageBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      body: BlocBuilder<TaskDetailsPageBloc, TaskDetailsPageState>(
        buildWhen: (previous, current) =>
            previous.loading != current.loading ||
            previous.error != current.error,
        builder: (context, state) {
          log('message');
          log(state.error.toString());
          return Center(
              child: Text(
            state.error,
            style: Theme.of(context).textTheme.headline4,
          ));
        },
      ),
    );
  }
}
