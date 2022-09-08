import 'package:flutter/material.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/widgets/skip_buttom.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class FinishOrderPageView extends StatefulWidget {
  const FinishOrderPageView({Key? key}) : super(key: key);

  @override
  _FinishOrderPageViewState createState() => _FinishOrderPageViewState();
}

class _FinishOrderPageViewState extends State<FinishOrderPageView> {
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
              Image.asset('assets/home/ManImageTwo.png'),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                'Thank You! \nOrder Completed',
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'Please rate your last Driver',
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
                hintText: 'Amaltha',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: width,
        height: 95.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Row(
            children: [
              CustomButton(
                text: 'Submit',
                width: 230.0,
                tap: () {
                  Navigator.pushNamed(
                    context,
                    RateFoodRoute,
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
