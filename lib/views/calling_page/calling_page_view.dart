import 'package:flutter/material.dart';
import 'package:food_ninja/themes/custom_colors.dart';

class CallingPageView extends StatefulWidget {
  const CallingPageView({Key? key}) : super(key: key);

  @override
  _CallingPageViewState createState() => _CallingPageViewState();
}

class _CallingPageViewState extends State<CallingPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 150.0,
          ),
          Image.asset('assets/home/manImage.png'),
          const SizedBox(
            height: 30.0,
          ),
          Text(
            'Courtney Henry',
            style: Theme.of(context).textTheme.headline3,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            '15.23 Min',
            style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: CustomColors.MORELIGHTGREY,
                ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/home/MuteIcon.png'),
              const SizedBox(
                width: 20.0,
              ),
              Image.asset('assets/home/CloseRedIcon.png'),
            ],
          )
        ],
      ),
    );
  }
}
