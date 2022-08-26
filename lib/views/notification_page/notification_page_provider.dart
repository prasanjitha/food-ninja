import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'notification_page_bloc.dart';
import 'notification_page_view.dart';

class NotificationPageProvider extends BlocProvider<NotificationPageBloc> {
  NotificationPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => NotificationPageBloc(context),
          child: const NotificationPageView(),
        );
}
