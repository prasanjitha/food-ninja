import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'vouchar_promo_page_event.dart';
import 'vouchar_promo_page_state.dart';

class VoucharPromoPageBloc
    extends Bloc<VoucharPromoPageEvent, VoucharPromoPageState> {
  VoucharPromoPageBloc(BuildContext context)
      : super(VoucharPromoPageState.initialState);
}
