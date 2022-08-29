import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'task_page_bloc.dart';
import 'task_page_view.dart';

class TaskPageProvider extends BlocProvider<TaskPageBloc> {
  TaskPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => TaskPageBloc(context),
          child: const TaskPageView(),
        );
}
