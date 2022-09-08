import 'package:flutter/material.dart';
import 'package:food_ninja/router/routing_constant.dart';

import '../../themes/custom_colors.dart';
import '../../widgets/back_icon_button.dart';
import '../../widgets/custom_button.dart';

class SignUpSuccessPageView extends StatefulWidget {
  const SignUpSuccessPageView({Key? key}) : super(key: key);

  @override
  _SignUpSuccessPageViewState createState() => _SignUpSuccessPageViewState();
}

class _SignUpSuccessPageViewState extends State<SignUpSuccessPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 150.0,
                ),
                Image.asset('assets/icons/confirm.png'),
                const SizedBox(
                  height: 20.0,
                ),
                Image.asset('assets/icons/Ordercompleted.png'),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Your Profile Is Ready To Use',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
        child: CustomButton(
          text: 'Try Order',
          tap: () {
            Navigator.pushNamed(
              context,
              MainHomePageRoute,
            );
          },
        ),
      ),
    );
  }
}
