import 'package:flutter/material.dart';
import 'package:food_ninja/router/routing_constant.dart';
import '../../widgets/custom_button.dart';

class SuccessNotificationScreen extends StatefulWidget {
  const SuccessNotificationScreen({Key? key}) : super(key: key);

  @override
  _SuccessNotificationScreenState createState() =>
      _SuccessNotificationScreenState();
}

class _SuccessNotificationScreenState extends State<SuccessNotificationScreen> {
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
                  'Password reset succesful',
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
          text: 'Back',
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
