import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'categories_two_page_event.dart';
import 'categories_two_page_state.dart';

class CategoriesTwoPageBloc
    extends Bloc<CategoriesTwoPageEvent, CategoriesTwoPageState> {
  CategoriesTwoPageBloc(BuildContext context)
      : super(CategoriesTwoPageState.initialState);
}
