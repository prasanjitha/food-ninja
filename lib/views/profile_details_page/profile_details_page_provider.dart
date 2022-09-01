import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'profile_details_page_bloc.dart';
import 'profile_details_page_view.dart';

class ProfileDetailsPageProvider extends BlocProvider<ProfileDetailsPageBloc> {
  ProfileDetailsPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => ProfileDetailsPageBloc(context),
          child: const ProfileDetailsPageView(),
        );
}
