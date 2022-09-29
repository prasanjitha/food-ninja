import 'package:flutter/material.dart';
import 'package:food_ninja/themes/custom_colors.dart';

import '../../widgets/custom_bottom_line.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_fill_text_field.dart';

class CategoriesOnePageView extends StatefulWidget {
  const CategoriesOnePageView({Key? key}) : super(key: key);

  @override
  _CategoriesOnePageViewState createState() => _CategoriesOnePageViewState();
}

class _CategoriesOnePageViewState extends State<CategoriesOnePageView>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: CustomColors.SCAFFOLD,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(95),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: AppBar(
              leading: const Icon(
                Icons.arrow_back_ios,
                color: CustomColors.SURFACED,
              ),
              title: Text(
                'Categories',
                style: Theme.of(context).textTheme.headline3,
              ),
              centerTitle: true,
              actions: const [
                Icon(
                  Icons.search,
                  color: CustomColors.SURFACED,
                ),
              ],
              bottom: TabBar(
                indicatorColor: CustomColors.ERROR,
                unselectedLabelColor: CustomColors.SECONDARY,
                unselectedLabelStyle: Theme.of(context).textTheme.headline4,
                tabs: [
                  Tab(
                    icon: Text(
                      'Woman',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Tab(
                    icon: Text(
                      'Men',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Tab(
                    icon: Text(
                      'Kids',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            HomePage(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColors.SCAFFOLD,
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Container(
              height: 100.0,
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: CustomColors.ERROR,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'SUMMER SALES',
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                            color: CustomColors.BACKGROUND,
                          ),
                    ),
                    Text(
                      'Up to 50% off',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: CustomColors.BACKGROUND,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            CategoryItemCard(
              size: size,
              imagePath:
                  'https://cdn.pixabay.com/photo/2018/01/06/09/25/hijab-3064633_960_720.jpg',
              space: 40.0,
              title: 'New',
            ),
            const SizedBox(
              height: 20.0,
            ),
            CategoryItemCard(
              size: size,
              imagePath:
                  'https://cdn.pixabay.com/photo/2016/11/29/05/46/young-woman-1867618_960_720.jpg',
              space: 30.0,
              title: 'Cloths',
            ),
            const SizedBox(
              height: 20.0,
            ),
            CategoryItemCard(
              size: size,
              imagePath:
                  'https://cdn.pixabay.com/photo/2020/12/16/10/44/cat-5836297_960_720.jpg',
              space: 35.0,
              title: 'Shose',
            ),
            const SizedBox(
              height: 20.0,
            ),
            CategoryItemCard(
              size: size,
              imagePath:
                  'https://cdn.pixabay.com/photo/2021/07/01/21/19/hat-6380330_960_720.jpg',
              space: 10.0,
              title: 'Accesories',
            ),
          ],
        ),
      )),
    );
  }
}

class CategoryItemCard extends StatelessWidget {
  const CategoryItemCard({
    Key? key,
    required this.size,
    required this.imagePath,
    required this.space,
    required this.title,
  }) : super(key: key);

  final Size size;
  final double space;
  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: CustomColors.BACKGROUND,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: space),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline3,
              textDirection: TextDirection.rtl,
            ),
          ),
          Container(
            width: 170.0,
            height: 100.0,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
              child: Image.network(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
