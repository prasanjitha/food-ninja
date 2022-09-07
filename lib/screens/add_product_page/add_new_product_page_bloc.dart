import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'add_new_product_page_event.dart';
import 'add_new_product_page_state.dart';

class AddNewProductPageBloc
    extends Bloc<AddNewProductPageEvent, AddNewProductPageState> {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController priceTextEditingController = TextEditingController();
  AddNewProductPageBloc(BuildContext context)
      : super(AddNewProductPageState.initialState) {
    on<AddBroductDetailsEvent>((event, emit) {
      emit(state.clone(name: event.name, price: event.price, loading: false));
    });
  }
}
