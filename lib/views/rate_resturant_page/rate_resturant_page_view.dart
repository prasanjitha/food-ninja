import 'package:flutter/material.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/widgets/skip_buttom.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class RateResturantPageView extends StatefulWidget {
  const RateResturantPageView({Key? key}) : super(key: key);

  @override
  _RateResturantPageViewState createState() => _RateResturantPageViewState();
}

class _RateResturantPageViewState extends State<RateResturantPageView> {
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
              Image.asset('assets/home/RateResturantImage.png'),
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
                'Please rate your Restaurant',
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
                  // Navigator.pushNamed(
                  //   context,
                  //   SignupSuccessRoute,
                  // );
                },
              ),
              const SizedBox(
                width: 10.0,
              ),
              const SkipButton(),
            ],
          ),
        ),
      ),
    );
  }
}
