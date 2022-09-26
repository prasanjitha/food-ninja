import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/septep/tea_home_page/tea_home_page_bloc.dart';
import 'package:food_ninja/septep/tea_home_page/tea_home_page_state.dart';

class TeaHomePageView extends StatefulWidget {
  const TeaHomePageView({Key? key}) : super(key: key);

  @override
  _TeaHomePageViewState createState() => _TeaHomePageViewState();
}

class _TeaHomePageViewState extends State<TeaHomePageView> {
  @override
  Widget build(BuildContext context) {
    TeaHomePageBloc bloc = BlocProvider.of<TeaHomePageBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tea home page'),
      ),
      body: BlocBuilder<TeaHomePageBloc, TeaHomePageState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const CircularProgressIndicator.adaptive();
          }
          return ListView.builder(
            itemCount: state.posts.length,
            itemBuilder: (context, index) {
              return Card(
                child: Row(
                  children: [
                    Text('${state.posts[index].id}'),
                    Text(state.posts[index].body),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
