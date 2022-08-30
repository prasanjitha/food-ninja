import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/views/get_title_page/get_title_details_page/get_title_details_page_event.dart';
import 'package:food_ninja/views/get_title_page/get_title_details_page/get_title_details_page_provider.dart';
import 'package:food_ninja/views/get_title_page/get_title_page_state.dart';

import 'get_title_details_page/get_title_details_page_bloc.dart';
import 'get_title_page_bloc.dart';

class GetTitlePageView extends StatefulWidget {
  const GetTitlePageView({Key? key}) : super(key: key);

  @override
  _GetTitlePageViewState createState() => _GetTitlePageViewState();
}

class _GetTitlePageViewState extends State<GetTitlePageView> {
  @override
  Widget build(BuildContext context) {
    GetTitlePageBloc bloc = BlocProvider.of<GetTitlePageBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Title",
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: BlocBuilder<GetTitlePageBloc, GetTitlePageState>(
        buildWhen: (previous, current) =>
            previous.isLoading != current.isLoading,
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
          return SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: state.myTitles.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => GetTitleDetailsPageProvider(
                                titleModel: state.myTitles[index],
                              ))));
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.myTitles[index].id.toString(),
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              state.myTitles[index].title.toString(),
                              style: Theme.of(context).textTheme.headline4,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
