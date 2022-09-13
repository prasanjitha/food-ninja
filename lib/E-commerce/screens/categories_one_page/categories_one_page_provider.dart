import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'categories_one_page_bloc.dart';
import 'categories_one_page_view.dart';

class CategoriesOnePageProvider extends BlocProvider<CategoriesOnePageBloc> {
  CategoriesOnePageProvider({Key? key})
      : super(
          key: key,
          create: (context) => CategoriesOnePageBloc(context),
          child: const CategoriesOnePageView(),
        );
}
