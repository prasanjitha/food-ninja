import 'package:flutter/material.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/widgets/nearest_resturant_item.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../widgets/custom_text_field.dart';

class MainHomePageView extends StatefulWidget {
  const MainHomePageView({Key? key}) : super(key: key);

  @override
  _MainHomePageViewState createState() => _MainHomePageViewState();
}

class _MainHomePageViewState extends State<MainHomePageView> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
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
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          notificationRoute,
                        );
                      },
                      child: Center(
                        child: Image.asset('assets/home/IconNotifiaction.png'),
                      ),
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
                      validator:
                          RequiredValidator(errorText: "Order is required"),
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
              Image.asset(
                'assets/home/PromoAdvertising.png',
                width: width,
                height: 150.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Icon(Icons.email),
              Icon(Icons.password),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nearest Restaurant',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    'Api testing',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    'Customer feedback api',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    'Customer feedback api',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    'Customer feedback api',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    'Google api key',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Container(),
                  const Text(''),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        ExploreRestturantPageRoute,
                      );
                    },
                    child: Text(
                      'Improve MPI Social media Screen Modification',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(color: CustomColors.ORANGE),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        ProductDetailsRoute,
                      );
                    },
                    child: const NearestResturantItem(
                      imagePath: 'assets/home/ResturantImage.png',
                      title: 'Vegan Resto',
                    ),
                  ),
                  const NearestResturantItem(
                    imagePath: 'assets/home/RestaurantImage.png',
                    title: 'Vegan Resto',
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Menu',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        ExploreMenuRoute,
                      );
                    },
                    child: Text(
                      'view more',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(color: CustomColors.ORANGE),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    DetailsMenuRoute,
                  );
                },
                child: Container(
                  width: width,
                  height: 90.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: CustomColors.SURFACED)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/home/PhotoMenu.png'),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Green Noddles',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Noddle Home',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                    color: CustomColors.PRIMARY_VARIANT,
                                  ),
                            ),
                          ],
                        ),
                        Image.asset('assets/home/Price.png'),
                      ],
                    ),
                  ),
                ),
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
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      ProfileDetailsRoute,
                    );
                  },
                  child: Image.asset('assets/home/IconProfile.png')),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      YourOrdersRoute,
                    );
                  },
                  child: Image.asset('assets/home/IconCart.png')),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      MessageRoute,
                    );
                  },
                  child: Image.asset('assets/home/Chat.png')),
            ],
          ),
        ),
      ),
    );
  }
}
