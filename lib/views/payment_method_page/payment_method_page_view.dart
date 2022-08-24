import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_ninja/widgets/payment_method_container.dart';

import '../../themes/custom_colors.dart';
import '../../widgets/activate_title.dart';
import '../../widgets/back_icon_button.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class PaymentMethodPageView extends StatefulWidget {
  const PaymentMethodPageView({Key? key}) : super(key: key);

  @override
  _PaymentMethodPageViewState createState() => _PaymentMethodPageViewState();
}

class _PaymentMethodPageViewState extends State<PaymentMethodPageView> {
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
                height: 20.0,
              ),
              CustomBackIconButton(),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Payment Method',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'This data will be displayed in your account profile for security',
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(
                height: 40.0,
              ),
              const PaymentMethodContainer(iconPath: 'assets/icons/paypal.png'),
              const SizedBox(
                height: 10.0,
              ),
              const PaymentMethodContainer(
                  iconPath: 'assets/icons/Payoneer_logo.png'),
              const SizedBox(
                height: 10.0,
              ),
              const PaymentMethodContainer(iconPath: 'assets/icons/visa.png'),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
        child: CustomButton(
          text: 'Next',
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
