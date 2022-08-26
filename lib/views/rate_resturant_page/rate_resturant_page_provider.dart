import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'rate_resturant_page_bloc.dart';
import 'rate_resturant_page_view.dart';

class RateResturantPageProvider extends BlocProvider<RateResturantPageBloc> {
  RateResturantPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => RateResturantPageBloc(context),
          child: const RateResturantPageView(),
        );
}
