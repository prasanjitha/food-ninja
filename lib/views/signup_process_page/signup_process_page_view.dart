import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/widgets/back_icon_button.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class SignupProcessPageView extends StatefulWidget {
  const SignupProcessPageView({Key? key}) : super(key: key);

  @override
  _SignupProcessPageViewState createState() => _SignupProcessPageViewState();
}

class _SignupProcessPageViewState extends State<SignupProcessPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
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
                  'Fill in your bio to get started',
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
                CustomTextFormField(hintText: 'First Name'),
                const SizedBox(
                  height: 10.0,
                ),
                CustomTextFormField(hintText: 'Last Name'),
                const SizedBox(
                  height: 10.0,
                ),
                CustomTextFormField(hintText: 'Mobile Number'),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
        child: CustomButton(
          text: 'Next',
          tap: () {
            Navigator.pushNamed(
              context,
              PaymentMethodRoute,
            );
          },
        ),
      ),
    );
  }
}
