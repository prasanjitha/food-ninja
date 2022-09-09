import 'package:flutter/material.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/widgets/nearest_resturant_item.dart';
import 'package:food_ninja/widgets/popular_item.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../widgets/custom_text_field.dart';
import '../../widgets/filter_icon.dart';

class ExploreMenuWithFilterPageView extends StatefulWidget {
  const ExploreMenuWithFilterPageView({Key? key}) : super(key: key);

  @override
  _ExploreMenuWithFilterPageViewState createState() =>
      _ExploreMenuWithFilterPageViewState();
}

class _ExploreMenuWithFilterPageViewState
    extends State<ExploreMenuWithFilterPageView> {
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
              Row(
                children: const [
                  FilterIcon(
                    title: 'Soup',
                    iconClose: true,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Popular Menu',
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 300.0,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: PopularMenuItem(),
                    );
                  },
                ),
              )
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
