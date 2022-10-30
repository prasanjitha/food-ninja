import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'message_page_bloc.dart';
import 'message_page_view.dart';

class MessagePageProvider extends BlocProvider<MessagePageBloc> {
  MessagePageProvider({Key? key})
      : super(
          key: key,
          create: (context) => MessagePageBloc(context),
          child: const MessagePageView(),
        );
}
