import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'filter_page_bloc.dart';
import 'filter_page_view.dart';

class FilterPageProvider extends BlocProvider<FilterPageBloc> {
  FilterPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => FilterPageBloc(context),
          child: const FilterPageView(),
        );
}
