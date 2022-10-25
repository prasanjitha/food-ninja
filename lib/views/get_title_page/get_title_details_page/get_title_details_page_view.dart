import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/models/Title.dart';
import 'package:food_ninja/views/get_title_page/get_title_details_page/get_title_details_page_state.dart';
import 'package:food_ninja/views/get_title_page/get_title_page_state.dart';

import 'get_title_details_page_bloc.dart';

class GetTitleDetailsPageView extends StatefulWidget {
  const GetTitleDetailsPageView({
    Key? key,
  }) : super(key: key);

  @override
  _GetTitleDetailsPageViewState createState() =>
      _GetTitleDetailsPageViewState();
}

class _GetTitleDetailsPageViewState extends State<GetTitleDetailsPageView> {
  @override
  Widget build(BuildContext context) {
    GetTitleDetailsPageBloc detailBloc =
        BlocProvider.of<GetTitleDetailsPageBloc>(context);
    return BlocBuilder<GetTitleDetailsPageBloc, GetTitleDetailsPageState>(
      buildWhen: (previous, current) =>
          previous.isLoading != current.isLoading ||
          previous.error != current.error,
      builder: (context, state) {
        if (state.isLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        log('message ');
        log(state.error);
        return Scaffold(
          appBar: AppBar(
            title: Text(
              detailBloc.state.error,
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          body: Center(
            child: Text(
              state.error,
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
        );
      },
    );
  }
}
