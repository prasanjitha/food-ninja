import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'order_details_page_bloc.dart';
import 'order_details_page_view.dart';

class OrdrDetailsPageProvider extends BlocProvider<OrdrDetailsPageBloc> {
  OrdrDetailsPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => OrdrDetailsPageBloc(context),
          child: const OrdrDetailsPageView(),
        );
}
