import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'notification_page_event.dart';
import 'notification_page_state.dart';

class NotificationPageBloc
    extends Bloc<NotificationPageEvent, NotificationPageState> {
  NotificationPageBloc(BuildContext context)
      : super(NotificationPageState.initialState);
}
