import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'finish_order_page_bloc.dart';
import 'finish_order_page_view.dart';

class FinishOrderPageProvider extends BlocProvider<FinishOrderPageBloc> {
  FinishOrderPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => FinishOrderPageBloc(context),
          child: const FinishOrderPageView(),
        );
}
