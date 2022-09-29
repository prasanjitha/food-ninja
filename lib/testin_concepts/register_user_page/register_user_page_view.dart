import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../user_home_page/user_home_page_bloc.dart';
import '../user_home_page/user_home_page_event.dart';
import '../user_home_page/user_home_page_view.dart';
import 'register_user_page_bloc.dart';

class RegisterUserPageView extends StatefulWidget {
  const RegisterUserPageView({Key? key}) : super(key: key);

  @override
  _RegisterUserPageViewState createState() => _RegisterUserPageViewState();
}

class _RegisterUserPageViewState extends State<RegisterUserPageView> {
  @override
  Widget build(BuildContext context) {
    RegisterUserPageBloc bloc = BlocProvider.of<RegisterUserPageBloc>(context);
    UserHomePageBloc userBloc = BlocProvider.of<UserHomePageBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Register User"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100.0,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: bloc.nameTextEditingController,
                decoration: const InputDecoration(
                  hintText: 'Username',
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ElevatedButton(
          onPressed: () {
            userBloc.add(
              GetUserNameEvent(
                username: bloc.nameTextEditingController.text.trim(),
              ),
            );
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BlocProvider.value(
                  value: userBloc,
                  child: const UserHomePageView(),
                ),
              ),
            );
          },
          child: const Text('Submit'),
        ),
      ),
    );
  }
}
