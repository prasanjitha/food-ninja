import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'payments_page_event.dart';
import 'payments_page_state.dart';

class PaymentsPageBloc extends Bloc<PaymentsPageEvent, PaymentsPageState> {
  PaymentsPageBloc(BuildContext context)
      : super(PaymentsPageState.initialState);
}
