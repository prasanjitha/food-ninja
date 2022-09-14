import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'categories_two_page_bloc.dart';
import 'categories_two_page_view.dart';

class CategoriesTwoPageProvider extends BlocProvider<CategoriesTwoPageBloc> {
  CategoriesTwoPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => CategoriesTwoPageBloc(context),
          child: const CategoriesTwoPageView(),
        );
}
