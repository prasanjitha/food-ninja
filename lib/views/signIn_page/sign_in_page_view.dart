import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/views/sign_up_page/sign_up_page_provider.dart';
import 'package:food_ninja/widgets/custom_button.dart';
import 'package:food_ninja/widgets/custom_icon_button.dart';
import 'package:food_ninja/widgets/custom_text_field.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'sign_in_page_bloc.dart';
import 'sign_in_page_event.dart';

class SignINPageView extends StatefulWidget {
  const SignINPageView({Key? key}) : super(key: key);

  @override
  _SignINPageViewState createState() => _SignINPageViewState();
}

class _SignINPageViewState extends State<SignINPageView> {
  late TextEditingController nameTextEditingController =
      TextEditingController();
  late TextEditingController passwordTextEditingController =
      TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    SignINPageBloc bloc = BlocProvider.of<SignINPageBloc>(context);
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
                Form(
                  key: _key,
                  child: Column(
                    children: [
                      CustomTextFormField(
                          validator:
                              RequiredValidator(errorText: "Email is required"),
                          controller: nameTextEditingController,
                          hintText: 'email'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      CustomTextFormField(
                          validator: RequiredValidator(
                              errorText: "Password is required"),
                          controller: passwordTextEditingController,
                          hintText: 'password'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                // CustomTextFormField(
                //     validator:
                //         RequiredValidator(errorText: "Password is required"),
                //     controller: passwordTextEditingController,
                //     hintText: 'password'),
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
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, VIaMethodRoute);
                  },
                  child: Text(
                    'Forgot Your Password?',
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: CustomColors.EIGHTEEN),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                CustomButton(
                  text: 'Login',
                  tap: () {
                    if (_key.currentState!.validate()) {
                      // bloc.add(LoginEvent(
                      //     email: nameTextEditingController.text,
                      //     password: passwordTextEditingController.text));
                      Navigator.pushNamed(context, MainHomePageRoute);
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
