import 'package:flutter/material.dart';
import 'package:food_ninja/E-commerce/screens/categories_one_page/categories_one_page_provider.dart';
import 'package:food_ninja/E-commerce/screens/main_page/main_page_provider.dart';
import 'package:food_ninja/E-commerce/screens/main_page_one/main_page_one_provider.dart';
import '../../../themes/custom_colors.dart';

class MainHomePageTabBarView extends StatefulWidget {
  const MainHomePageTabBarView({Key? key}) : super(key: key);

  @override
  _MainHomePageTabBarViewState createState() => _MainHomePageTabBarViewState();
}

class _MainHomePageTabBarViewState extends State<MainHomePageTabBarView> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    CategoriesOnePageProvider(),
    MainPageProvider(),
    MainPageOneProvider()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 70.0,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: CustomColors.SCAFFOLD,
            selectedItemColor: CustomColors.ERROR,
            selectedFontSize: 16.0,
            unselectedLabelStyle:
                const TextStyle(fontSize: 16.0, color: CustomColors.SURFACED),
            elevation: 15,
            onTap: onTabTapped,
            unselectedIconTheme: const IconThemeData(
              color: CustomColors.SECONDARY,
            ),
            unselectedItemColor: CustomColors.SURFACED,
            currentIndex: _currentIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorite',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
