import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/models/Title.dart';

import 'get_title_details_page_bloc.dart';
import 'get_title_details_page_view.dart';

class GetTitleDetailsPageProvider
    extends BlocProvider<GetTitleDetailsPageBloc> {
  final TitleModel titleModel;
  GetTitleDetailsPageProvider({Key? key, required this.titleModel})
      : super(
          key: key,
          create: (context) => GetTitleDetailsPageBloc(context, titleModel),
          child: const GetTitleDetailsPageView(),
        );
}
