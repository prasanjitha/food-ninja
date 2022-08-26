import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'rate_food_page_bloc.dart';
import 'rate_food_page_view.dart';

class RateFoodPageProvider extends BlocProvider<RateFoodPageBloc> {
  RateFoodPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => RateFoodPageBloc(context),
          child: const RateFoodPageView(),
        );
}
