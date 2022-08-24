import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'payment_method_page_bloc.dart';
import 'payment_method_page_view.dart';

class PaymentMethodPageProvider extends BlocProvider<PaymentMethodPageBloc> {
  PaymentMethodPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => PaymentMethodPageBloc(context),
          child: const PaymentMethodPageView(),
        );
}
