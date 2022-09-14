import 'package:flutter/material.dart';
import 'package:food_ninja/themes/custom_colors.dart';

import '../../widgets/custom_button.dart';

class CategoriesTwoPageView extends StatefulWidget {
  const CategoriesTwoPageView({Key? key}) : super(key: key);

  @override
  _CategoriesTwoPageViewState createState() => _CategoriesTwoPageViewState();
}

class _CategoriesTwoPageViewState extends State<CategoriesTwoPageView>
    with SingleTickerProviderStateMixin {
  final List<String> category = [
    'Tops',
    'Shirts & Blouses',
    'Cardigans & Sweaters',
    'Knitwear',
    'Blazers',
    'Outerwear',
    'Pants',
    'Jeans',
    'Shorts',
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: CustomColors.SCAFFOLD,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
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
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                CustomButtom(
                  tap: () {},
                  title: 'VIEW ALL ITEMS',
                  fontSize: 20.0,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Choose category',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: CustomColors.SECONDARY),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 1000.0,
                  child: ListView.builder(
                    itemCount: category.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 20.0),
                          child: Text(
                            category[index],
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: CustomColors.SECONDARY),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
