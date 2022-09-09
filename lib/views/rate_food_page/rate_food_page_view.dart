import 'package:flutter/material.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/widgets/skip_buttom.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class RateFoodPageView extends StatefulWidget {
  const RateFoodPageView({Key? key}) : super(key: key);

  @override
  _RateFoodPageViewState createState() => _RateFoodPageViewState();
}

class _RateFoodPageViewState extends State<RateFoodPageView> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100.0,
              ),
              Image.asset('assets/home/FoodImage.png'),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                'Thank You! \nEnjoy Your Meal',
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'Please rate your Food',
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      color: CustomColors.MORELIGHTGREY,
                    ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Image.asset('assets/home/StarIcon.png'),
              const SizedBox(
                height: 20.0,
              ),
              CustomTextFormField(
                validator: RequiredValidator(errorText: "FeedBack is required"),
                prefixIconPath: 'assets/home/editIcon.png',
                hintText: 'Leave feedback',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: width,
        height: 65.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              CustomButton(
                text: 'Submit',
                width: 230.0,
                tap: () {
                  Navigator.pushNamed(
                    context,
                    RateResturatRoute,
                  );
                },
              ),
              const SizedBox(
                width: 10.0,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      VoucharPromoRoute,
                    );
                  },
                  child: const SkipButton()),
            ],
          ),
        ),
      ),
    );
  }
}
