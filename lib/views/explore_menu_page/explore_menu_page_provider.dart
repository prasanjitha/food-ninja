import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'explore_menu_page_bloc.dart';
import 'explore_menu_page_view.dart';

class ExploreMenuPageProvider extends BlocProvider<ExploreMenuPageBloc> {
  ExploreMenuPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => ExploreMenuPageBloc(context),
          child: const ExploreMenuPageView(),
        );
}
