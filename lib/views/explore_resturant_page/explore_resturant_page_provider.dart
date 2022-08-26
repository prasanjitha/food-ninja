import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'explore_resturant_page_bloc.dart';
import 'explore_resturant_page_view.dart';

class ExploreResturantPageProvider
    extends BlocProvider<ExploreResturantPageBloc> {
  ExploreResturantPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => ExploreResturantPageBloc(context),
          child: const ExploreResturantPageView(),
        );
}
