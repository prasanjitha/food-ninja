import 'package:flutter/material.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/widgets/via_method.dart';

import '../../widgets/back_icon_button.dart';
import '../../widgets/custom_button.dart';

class ViaMethodPageView extends StatefulWidget {
  const ViaMethodPageView({Key? key}) : super(key: key);

  @override
  _ViaMethodPageViewState createState() => _ViaMethodPageViewState();
}

class _ViaMethodPageViewState extends State<ViaMethodPageView> {
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
              Align(
                alignment: Alignment.topLeft,
                child: CustomBackIconButton(),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Forgot password?',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Select which contact details should we use to reset your password',
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(
                height: 40.0,
              ),
              const ViaMethod(
                  iconPath: 'assets/icons/Messages.png',
                  heading: 'Via sms:',
                  title: '456'),
              const SizedBox(
                height: 20.0,
              ),
              const ViaMethod(
                  iconPath: 'assets/icons/Email.png',
                  heading: 'Via email:',
                  title: '@gmail.com'),
            ],
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
              ResetPasswordRoute,
            );
          },
        ),
      ),
    );
  }
}
