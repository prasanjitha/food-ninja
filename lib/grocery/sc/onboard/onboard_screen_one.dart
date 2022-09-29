import 'package:flutter/material.dart';
import 'package:food_ninja/grocery/sc/onboard/onboard_screen_two.dart';
import 'package:food_ninja/themes/custom_colors.dart';

import '../signup_page/signup_page_provider.dart';
import '../wg/custom_next_button.dart';

class OnBoardScreenOne extends StatelessWidget {
  const OnBoardScreenOne({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.BACKGROUND,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/grocery/Splash-444.png',
              width: 200,
              height: 200,
            ),
            Text(
              'Secure payment',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: CustomColors.SURFACED,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Lorem  ipsum dolor sit amen, consenter sadipscing elitr, sed diam nonumy',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomNextButton(
              tap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) => const OnBoardScreenTwo()),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) => SignUpPageProvider()),
                  ),
                );
              },
              child: Text(
                'Skip',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: CustomColors.SURFACED,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
