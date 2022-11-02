import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'your_orders_page_bloc.dart';
import 'your_orders_page_view.dart';

class YourOrdersPageProvider extends BlocProvider<YourOrdersPageBloc> {
  YourOrdersPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => YourOrdersPageBloc(context),
          child: const YourOrdersPageView(),
        );
}
