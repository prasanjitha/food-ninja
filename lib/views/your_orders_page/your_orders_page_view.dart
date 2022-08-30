import 'package:flutter/material.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/widgets/nearest_resturant_item.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/my_order_item.dart';

class YourOrdersPageView extends StatefulWidget {
  const YourOrdersPageView({Key? key}) : super(key: key);

  @override
  _YourOrdersPageViewState createState() => _YourOrdersPageViewState();
}

class _YourOrdersPageViewState extends State<YourOrdersPageView> {
  @override
  Widget build(BuildContext context) {
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
                  NewWidget()
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
              const MyOrderItem(),
              const SizedBox(
                height: 10.0,
              ),
              const MyOrderItem(),
              const SizedBox(
                height: 10.0,
              ),
              const MyOrderItem(),
              const SizedBox(
                height: 10.0,
              ),
              const MyOrderItem(),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: CustomButton(
          text: 'Check out',
          tap: () {
            Navigator.pushNamed(
              context,
              VIaMethodRoute,
            );
          },
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.0,
      height: 45.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: CustomColors.PRIMARY_VARIANT)),
      child: Center(
        child: Image.asset('assets/home/IconNotifiaction.png'),
      ),
    );
  }
}
