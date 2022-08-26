import 'package:flutter/material.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/widgets/filter_icon.dart';
import 'package:food_ninja/widgets/nearest_resturant_item.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class FilterPageView extends StatefulWidget {
  const FilterPageView({Key? key}) : super(key: key);

  @override
  _FilterPageViewState createState() => _FilterPageViewState();
}

class _FilterPageViewState extends State<FilterPageView> {
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
              CustomTextFormField(
                prefixIconPath: 'assets/home/IconSearch.png',
                hintText: 'What do you want to order?',
                fillColor: CustomColors.LIGHTPINK,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Type',
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: const [
                  FilterIcon(
                    title: 'Restaurant',
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  FilterIcon(
                    title: 'Menu',
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Location',
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: const [
                  FilterIcon(
                    title: '1 Km',
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  FilterIcon(
                    title: '>10 Km',
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  FilterIcon(
                    title: '<10 Km',
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Food',
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
                children: [
                  Row(
                    children: const [
                      FilterIcon(
                        title: 'Cake',
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      FilterIcon(
                        title: 'Soup',
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      FilterIcon(
                        title: 'Main Course',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: const [
                      FilterIcon(
                        title: 'Appetize',
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      FilterIcon(
                        title: 'Dessert',
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: CustomButton(
          text: 'Search',
          width: width,
          tap: () {
            // Navigator.pushNamed(
            //   context,
            //   PaymentMethodRoute,
            // );
          },
        ),
      ),
    );
  }
}
