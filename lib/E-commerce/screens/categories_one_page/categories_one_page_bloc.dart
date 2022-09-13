import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'categories_one_page_event.dart';
import 'categories_one_page_state.dart';

class CategoriesOnePageBloc
    extends Bloc<CategoriesOnePageEvent, CategoriesOnePageState> {
  CategoriesOnePageBloc(BuildContext context)
      : super(CategoriesOnePageState.initialState);
}
