import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'payment_page_event.dart';
import 'payment_page_state.dart';

class PaymentMethodPageBloc
    extends Bloc<PaymentMethodPageEvent, PaymentMethodPageState> {
  PaymentMethodPageBloc(BuildContext context)
      : super(PaymentMethodPageState.initialState);
}
