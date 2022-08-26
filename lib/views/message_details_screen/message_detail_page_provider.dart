import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'message_details_page_bloc.dart';
import 'message_detail_page_view.dart';

class MessageDetailsPageProvider extends BlocProvider<MessageDetailsPageBloc> {
  MessageDetailsPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => MessageDetailsPageBloc(context),
          child: const MessageDetailsPageView(),
        );
}
