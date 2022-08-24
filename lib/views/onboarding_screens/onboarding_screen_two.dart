import 'package:flutter/material.dart';
import 'package:food_ninja/widgets/back_icon_button.dart';
import 'package:food_ninja/widgets/custom_button.dart';

import '../../router/routing_constant.dart';

class OBScreenTwo extends StatelessWidget {
  const OBScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/Illustartion.png',
              height: 430,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Text(
                'Find your Comfort Food here',
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Text(
                'Here You Can find a chef or dish for every taste and color. Enjoy!',
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomButton(
              tap: () {
                Navigator.pushNamed(context, OBScreenThreeRoute);
              },
            )
          ],
        ),
      ),
    );
  }
}
