import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'product_details_page_event.dart';
import 'product_details_page_state.dart';

class ProductDetailsPageBloc
    extends Bloc<ProductDetailsPageEvent, ProductDetailsPageState> {
  ProductDetailsPageBloc(BuildContext context)
      : super(ProductDetailsPageState.initialState);
}
