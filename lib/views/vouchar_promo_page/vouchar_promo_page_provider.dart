import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'vouchar_promo_page_bloc.dart';
import 'vouchar_promo_page_view.dart';

class VoucharPromoPageProvider extends BlocProvider<VoucharPromoPageBloc> {
  VoucharPromoPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => VoucharPromoPageBloc(context),
          child: const VoucharPromoPageView(),
        );
}
