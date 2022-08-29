import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'task_details_page_bloc.dart';
import 'task_details_page_view.dart';

class TaskDetailsPageProvider extends BlocProvider<TaskDetailsPageBloc> {
  TaskDetailsPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => TaskDetailsPageBloc(context),
          child: const TaskDetailsPageView(),
        );
}
