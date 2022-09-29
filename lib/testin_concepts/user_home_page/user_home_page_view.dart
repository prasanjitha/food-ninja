import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/testin_concepts/user_home_page/user_home_page_state.dart';

import 'user_home_page_bloc.dart';

class UserHomePageView extends StatefulWidget {
  const UserHomePageView({Key? key}) : super(key: key);

  @override
  _UserHomePageViewState createState() => _UserHomePageViewState();
}

class _UserHomePageViewState extends State<UserHomePageView> {
  @override
  Widget build(BuildContext context) {
    UserHomePageBloc bloc = BlocProvider.of<UserHomePageBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi ${bloc.state.username}"),
      ),
      body: Center(
          child: BlocBuilder<UserHomePageBloc, UserHomePageState>(
        buildWhen: (previous, current) => previous.username != current.username,
        builder: (context, state) {
          return Text("Hi ${state.username}");
        },
      )),
    );
  }
}
