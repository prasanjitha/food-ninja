import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'message_page_event.dart';
import 'message_page_state.dart';

class MessagePageBloc extends Bloc<MessagePageEvent, MessagePageState> {
  MessagePageBloc(BuildContext context) : super(MessagePageState.initialState);
}
