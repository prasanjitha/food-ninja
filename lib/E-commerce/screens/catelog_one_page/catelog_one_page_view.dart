// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import '../../widgets/catelog_item_card.dart';
import '../../widgets/top_catelog_item.dart';
import 'catelog_one_page_bloc.dart';

class CatelogOnePageView extends StatefulWidget {
  const CatelogOnePageView({Key? key}) : super(key: key);

  @override
  _CatelogOnePageViewState createState() => _CatelogOnePageViewState();
}

class _CatelogOnePageViewState extends State<CatelogOnePageView>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    CatelogOnePageBloc bloc = BlocProvider.of<CatelogOnePageBloc>(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: CustomColors.SCAFFOLD,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(180),
            child: AppBar(
              leading: const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: CustomColors.ONSURFACE,
                ),
              ),
              title: Text(
                'Categories',
                style: Theme.of(context).textTheme.headline3,
              ),
              centerTitle: true,
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.search,
                    color: CustomColors.ONSURFACE,
                  ),
                ),
              ],
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(80.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Women’s tops',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        height: 30.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            TopCatlogItem(
                              title: 'T-shirts',
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            TopCatlogItem(
                              title: 'Crop tops',
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            TopCatlogItem(
                              title: 'Sleeveless',
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            TopCatlogItem(
                              title: 'Sleeveless',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.filter_rounded),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                'Filters',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.filter_rounded),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                'Price:lowest to high',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ],
                          ),
                          const Icon(Icons.gavel_outlined)
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CatelogItemCard(bloc: bloc),
                  const SizedBox(
                    height: 10.0,
                  ),
                  CatelogItemCard(bloc: bloc),
                  const SizedBox(
                    height: 10.0,
                  ),
                  CatelogItemCard(bloc: bloc),
                  const SizedBox(
                    height: 10.0,
                  ),
                  CatelogItemCard(bloc: bloc),
                  const SizedBox(
                    height: 10.0,
                  ),
                  CatelogItemCard(bloc: bloc),
                  const SizedBox(
                    height: 10.0,
                  ),
                  CatelogItemCard(bloc: bloc),
                  const SizedBox(
                    height: 10.0,
                  ),
                  CatelogItemCard(bloc: bloc),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
