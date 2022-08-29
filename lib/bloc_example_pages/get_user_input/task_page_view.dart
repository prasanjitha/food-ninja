import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/bloc_example_pages/get_user_input/task_page_event.dart';
import 'package:food_ninja/widgets/my_custom_text_feild.dart';

import 'task_details_page/task_details_page_bloc.dart';
import 'task_page_bloc.dart';

class TaskPageView extends StatefulWidget {
  const TaskPageView({Key? key}) : super(key: key);

  @override
  _TaskPageViewState createState() => _TaskPageViewState();
}

class _TaskPageViewState extends State<TaskPageView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    controller.text = 'Kamal';
    TaskPageBloc bloc = BlocProvider.of<TaskPageBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
          child: Column(
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                MyCustomTextFeild(
                  controller: controller,
                  onSaved: (_) {
                    bloc.add(ChangeTPEvent(_));
                  },
                ),
                MyCustomTextFeild(
                  onSaved: (_) {
                    bloc.add(ChangeSpecialNoteEvent(_));
                  },
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                bloc.add(PressDoneEvent());
              }
            },
            child: const Text('Submit'),
          ),
        ],
      )),
    );
  }
}
