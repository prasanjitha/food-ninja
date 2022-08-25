import 'package:flutter/material.dart';
import 'package:food_ninja/router/routing_constant.dart';

import '../../themes/custom_colors.dart';
import '../../widgets/back_icon_button.dart';
import '../../widgets/custom_button.dart';

class SetLocationPageView extends StatefulWidget {
  const SetLocationPageView({Key? key}) : super(key: key);

  @override
  _SetLocationPageViewState createState() => _SetLocationPageViewState();
}

class _SetLocationPageViewState extends State<SetLocationPageView> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
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
                'Set Your Location ',
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
              Container(
                width: width,
                height: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                    color: CustomColors.ONSURFACE,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/icons/PinLogo.png'),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            'Your Location',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ],
                      ),
                      Container(
                        width: width,
                        height: 60.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: CustomColors.LIGHTGREY),
                        child: Center(
                          child: Text(
                            'Set Location',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
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
            Navigator.pushNamed(
              context,
              SignupSuccessRoute,
            );
          },
        ),
      ),
    );
  }
}
