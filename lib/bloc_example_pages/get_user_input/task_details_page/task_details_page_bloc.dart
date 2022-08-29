import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'task_details_page_event.dart';
import 'task_details_page_state.dart';

class TaskDetailsPageBloc
    extends Bloc<TaskDetailsPageEvent, TaskDetailsPageState> {
  TaskDetailsPageBloc(BuildContext context)
      : super(TaskDetailsPageState.initialState) {
    on<GetTaskObjectEvent>((event, emit) {
      emit(state.clone(loading: true));
      emit(state.clone(error: event.posts.body, loading: false));
    });
  }
}
