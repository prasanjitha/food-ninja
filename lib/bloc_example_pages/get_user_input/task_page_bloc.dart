import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'task_page_event.dart';
import 'task_page_state.dart';

class TaskPageBloc extends Bloc<TaskPageEvent, TaskPageState> {
  TaskPageBloc(BuildContext context) : super(TaskPageState.initialState) {
    on<ChangeTPEvent>((event, emitter) {
      emitter(state.clone(tp: event.tp));
    });
    on<ChangeSpecialNoteEvent>((event, emitter) {
      emitter(state.clone(note: event.specialNote));
    });

    on<PressDoneEvent>((event, emitter) {
      log(state.note);
      log(state.tp);
    });
  }
}
