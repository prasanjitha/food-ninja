import 'package:flutter/material.dart';
import 'package:food_ninja/widgets/custom_button.dart';

import '../../router/routing_constant.dart';

class OBScreenThree extends StatelessWidget {
  const OBScreenThree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/Illustration.png',
              height: 430,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'Food Ninja is Where Your Comfort Food Lives',
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
                'Enjoy a fast and smooth food delivery at your doorstep',
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomButton(
              tap: () {
                Navigator.pushNamed(context, SignUpRoute);
              },
            )
          ],
        ),
      ),
    );
  }
}
