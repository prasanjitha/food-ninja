import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'payments_page_bloc.dart';
import 'payments_page_view.dart';

class PaymentsPageProvider extends BlocProvider<PaymentsPageBloc> {
  PaymentsPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => PaymentsPageBloc(context),
          child: const PaymentsPageView(),
        );
}
