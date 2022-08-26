import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'message_detail_page_event.dart';
import 'message_detail_page_state.dart';

class MessageDetailsPageBloc
    extends Bloc<MessageDetailsPageEvent, MessageDetailsPageState> {
  MessageDetailsPageBloc(BuildContext context)
      : super(MessageDetailsPageState.initialState);
}
