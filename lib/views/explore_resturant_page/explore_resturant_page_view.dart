import 'package:flutter/material.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/widgets/nearest_resturant_item.dart';

import '../../widgets/custom_text_field.dart';

class ExploreResturantPageView extends StatefulWidget {
  const ExploreResturantPageView({Key? key}) : super(key: key);

  @override
  _ExploreResturantPageViewState createState() =>
      _ExploreResturantPageViewState();
}

class _ExploreResturantPageViewState extends State<ExploreResturantPageView> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Text(
                      'Find Your Favorite Food',
                      style: Theme.of(context).textTheme.headline2,
                      maxLines: 2,
                    ),
                  ),
                  Container(
                    width: 45.0,
                    height: 45.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border:
                            Border.all(color: CustomColors.PRIMARY_VARIANT)),
                    child: Center(
                      child: Image.asset('assets/home/IconNotifiaction.png'),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      prefixIconPath: 'assets/home/IconSearch.png',
                      hintText: 'What do you want to order?',
                      fillColor: CustomColors.LIGHTPINK,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          FilterRoute,
                        );
                      },
                      child: Image.asset('assets/home/FilterIcon.png')),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              InkWell(
                // onTap: () {
                //   Navigator.pushNamed(
                //     context,
                //     ExploreRestturantPageRoute,
                //   );
                // },
                child: Text(
                  'Nearest Restaurant',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  NearestResturantItem(
                    imagePath: 'assets/home/ResturantImage.png',
                    title: 'Vegan Resto',
                  ),
                  NearestResturantItem(
                    imagePath: 'assets/home/RestaurantImage.png',
                    title: 'Health Food',
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  NearestResturantItem(
                    imagePath: 'assets/home/RestaurantImage1.png',
                    title: 'Good Food',
                  ),
                  NearestResturantItem(
                    imagePath: 'assets/home/RestaurantImage2.png',
                    title: 'Smart Resto',
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  NearestResturantItem(
                    imagePath: 'assets/home/RestaurantImage3.png',
                    title: 'Vegan Resto',
                  ),
                  NearestResturantItem(
                    imagePath: 'assets/home/RestaurantImage4.png',
                    title: 'Vegan Resto',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: width,
        height: 80.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/home/IconHomeActive.png'),
              Image.asset('assets/home/IconProfile.png'),
              Image.asset('assets/home/IconCart.png'),
              Image.asset('assets/home/Chat.png'),
            ],
          ),
        ),
      ),
    );
  }
}
