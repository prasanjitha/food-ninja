import 'package:flutter/material.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/widgets/custom_button.dart';

class OBScreenOne extends StatelessWidget {
  const OBScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200.0,
            ),
            Image.asset(
              'assets/images/Logo.png',
            ),
            const SizedBox(
              height: 20.0,
            ),
            Image.asset(
              'assets/images/FoodNinja.png',
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Deliever Favorite Food',
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(
              height: 40.0,
            ),
            CustomButton(
              tap: () {
                Navigator.of(context).pushNamed(OBScreenTwoRoute);
                // Navigator.popAndPushNamed(context, OBScreenTwoRoute);
              },
            )
          ],
        ),
      ),
      // body: Stack(
      //   children: [
      //     // Image.asset(
      //     //   'assets/images/Pattern.png',
      //     //   width: width,
      //     //   height: 260,
      //     //   fit: BoxFit.cover,
      //     // ),
      //     Container(),
      //     Positioned(
      //       top: 200.0,
      //       left: 90.0,
      //       child: Image.asset(
      //         'assets/images/Logo.png',
      //       ),
      //     ),
      //     Positioned(
      //       top: 365.0,
      //       left: 90.0,
      //       child: Image.asset(
      //         'assets/images/FoodNinja.png',
      //       ),
      //     ),
      //     Positioned(
      //       top: 413.0,
      //       left: 106.0,
      //       child: Text(
      //         'Deliever Favorite Food',
      //         style: Theme.of(context).textTheme.headline5,
      //       ),
      //     ),
      //     Positioned(
      //       top: 513.0,
      //       left: 106.0,
      //       child: Container(
      //         width: 160.0,
      //         height: 60.0,
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(15.0),
      //           gradient: const LinearGradient(
      //             begin: Alignment.topLeft,
      //             end: Alignment.bottomRight,
      //             colors: [CustomColors.LIGHTGREEN, CustomColors.DARKGREEN],
      //           ),
      //         ),
      //         child: Center(
      //           child: Text(
      //             'Next',
      //             style: Theme.of(context).textTheme.headline3!.copyWith(
      //                   color: CustomColors.BACKGROUND,
      //                 ),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
