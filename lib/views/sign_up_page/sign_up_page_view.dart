import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/widgets/activate_title.dart';
import 'package:food_ninja/widgets/back_icon_button.dart';

import '../../themes/custom_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_field.dart';
import 'sign_up_page_bloc.dart';
import 'sign_up_page_event.dart';

class SignUpPageView extends StatefulWidget {
  const SignUpPageView({Key? key}) : super(key: key);

  @override
  _SignUpPageViewState createState() => _SignUpPageViewState();
}

class _SignUpPageViewState extends State<SignUpPageView> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SignUpPageBloc bloc = BlocProvider.of<SignUpPageBloc>(context);
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
                  height: 10.0,
                ),
                Text(
                  'Deliever Favorite Food',
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Sign Up For Free',
                  style: Theme.of(context).textTheme.headline3,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                        controller: nameTextEditingController,
                        prefixIconPath: 'assets/icons/Profile.png',
                        hintText: 'Amaltha',
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      CustomTextFormField(
                        controller: emailTextEditingController,
                        prefixIconPath: 'assets/icons/Message.png',
                        hintText: 'Email',
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      CustomTextFormField(
                        controller: passwordTextEditingController,
                        prefixIconPath: 'assets/icons/Lock.png',
                        hintText: 'Password',
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const ActivateTitle(title: 'Keep Me Signed In'),
                const SizedBox(
                  height: 10.0,
                ),
                const ActivateTitle(title: 'Email Me About Special Pricing'),
                const SizedBox(
                  height: 20.0,
                ),
                CustomButton(
                  text: 'Create Account',
                  tap: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();

                      bloc.add(
                        SubmitUserDetaEvent(
                          email: emailTextEditingController.text.trim(),
                          name: nameTextEditingController.text.trim(),
                          password: passwordTextEditingController.text.trim(),
                        ),
                      );
                    }
                    // Navigator.popAndPushNamed(
                    //   context,
                    //   SignupProcessRoute,
                    // );
                  },
                  fontSize: 18.0,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.popAndPushNamed(
                      context,
                      SignInRoute,
                    );
                  },
                  child: Text(
                    'already have an account?',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: CustomColors.LIGHTGREEN,
                          decoration: TextDecoration.underline,
                          decorationColor: CustomColors.DARKGREEN,
                          decorationThickness: 1,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
