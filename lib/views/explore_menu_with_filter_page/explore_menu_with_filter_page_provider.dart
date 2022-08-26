import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'explore_menu_with_filter_page_bloc.dart';
import 'explore_menu_with_filter_page_view.dart';

class ExploreMenuWithFilterPageProvider
    extends BlocProvider<ExploreMenuWithFilterPageBloc> {
  ExploreMenuWithFilterPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => ExploreMenuWithFilterPageBloc(context),
          child: const ExploreMenuWithFilterPageView(),
        );
}
