import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'explore_resturant_with_filter_page_bloc.dart';
import 'explore_resturant_with_filter_page_view.dart';

class ExploreResturantWithFilterPageProvider
    extends BlocProvider<ExploreResturantWithFilterPageBloc> {
  ExploreResturantWithFilterPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => ExploreResturantWithFilterPageBloc(context),
          child: const ExploreResturantWithFilterPageView(),
        );
}
