import 'package:flutter/material.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/widgets/custom_button.dart';
import 'package:food_ninja/widgets/custom_icon_button.dart';
import 'package:food_ninja/widgets/custom_text_field.dart';

class SignINPageView extends StatefulWidget {
  const SignINPageView({Key? key}) : super(key: key);

  @override
  _SignINPageViewState createState() => _SignINPageViewState();
}

class _SignINPageViewState extends State<SignINPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
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
                height: 20.0,
              ),
              Text(
                'Login To Your Account',
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomTextFormField(hintText: 'email'),
              const SizedBox(
                height: 10.0,
              ),
              CustomTextFormField(hintText: 'password'),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'Or Continue With',
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CustomIconButton(
                    icon: Icons.facebook,
                    text: 'Facebook',
                    color: CustomColors.BLUE,
                  ),
                  CustomIconButton(
                    icon: Icons.email_outlined,
                    text: 'Google',
                    color: CustomColors.ERROR,
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'Forgot Your Password?',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: CustomColors.LIGHTGREEN),
              ),
              const SizedBox(
                height: 10.0,
              ),
              CustomButton(
                text: 'Login',
                tap: () {},
              )
            ],
          ),
        ),
      ),
    ));
  }
}
