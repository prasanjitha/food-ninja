import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../views/add_products/add_phone_page/add_phone_page_view.dart';
import '../add_product_page/add_new_product_page_bloc.dart';
import 'home_page_bloc.dart';
import 'home_page_event.dart';
import 'home_page_state.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    AddNewProductPageBloc bloc =
        BlocProvider.of<AddNewProductPageBloc>(context);
    HomePageBloc homeBloc = BlocProvider.of<HomePageBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              homeBloc.state.name.toString(),
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 20.0,
              left: 20.0,
              right: 20.0,
            ),
            child: AddButton(
              tap: () {
                homeBloc.add(SubmitUserDataEvent(
                  price: homeBloc.state.price,
                ));
              },
            ),
          )),
    );
  }
}
