import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'payment_method_page_event.dart';
import 'payment_method_page_state.dart';

class PaymentMethodPageBloc
    extends Bloc<PaymentMethodPageEvent, PaymentMethodPageState> {
  PaymentMethodPageBloc(BuildContext context)
      : super(PaymentMethodPageState.initialState) {
    on<ChoosePaymentMethod>((event, emit) {
      log(event.method);

      emit(state.clone(isLoading: true));
      emit(state.clone(paymentMethod: event.method, isLoading: false));
    });

    on<NamePaymentMethod>((event, emit) {
      log('payment method bloc ${event.name}');
      emit(state.clone(isLoading: true));

      emit(state.clone(error: event.name, isLoading: false));
    });
  }
}
