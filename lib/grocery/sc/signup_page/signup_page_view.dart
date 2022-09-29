import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/grocery/sc/signup_page/signup_page_event.dart';
import 'package:food_ninja/grocery/sc/wg/custom_icon_button.dart';
import 'package:food_ninja/grocery/sc/wg/custom_next_button.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../themes/custom_colors.dart';
import '../wg/custom_text_form_field.dart';
import 'signup_page_bloc.dart';

class SignUpPageView extends StatefulWidget {
  const SignUpPageView({Key? key}) : super(key: key);

  @override
  _SignUpPageViewState createState() => _SignUpPageViewState();
}

class _SignUpPageViewState extends State<SignUpPageView> {
  final emailValidator = MultiValidator([
    RequiredValidator(errorText: 'email is required'),
    EmailValidator(errorText: "Email or phone number is required"),
  ]);
  bool _checkbox = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    SignUpPageBloc bloc = BlocProvider.of<SignUpPageBloc>(context);
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30.0,
            ),
            Text('Welcome', style: Theme.of(context).textTheme.headline2),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Please provide following details for your new account',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: CustomColors.SECONDARY,
                  ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomBorderTextField(
                    validator: RequiredValidator(errorText: 'Name is required'),
                    controller: bloc.nameTextEditingController,
                    hitText: 'Name',
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  CustomBorderTextField(
                    validator:
                        RequiredValidator(errorText: 'Surname is required'),
                    controller: bloc.surnameTextEditingController,
                    hitText: 'Surname',
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  CustomBorderTextField(
                    validator: emailValidator,
                    controller: bloc.emailTextEditingController,
                    hitText: 'Email address',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: CustomColors.DARKGREEN,
                  value: _checkbox,
                  onChanged: (value) {
                    setState(() => _checkbox = !_checkbox);
                  },
                  side: const BorderSide(
                    color: CustomColors.DARKGREEN,
                    width: 1.5,
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              'By creating your account you have to agree with',
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    color: CustomColors.SECONDARY,
                                  ),
                        ),
                        TextSpan(
                          text: ' our Teams and conditions.',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                                  color: CustomColors.DARKGREEN,
                                  decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            CustomNextButton(
              btnText: 'Sign up',
              width: size.width,
              tap: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  bloc.add(
                    SignUpEvent(
                      name: bloc.nameTextEditingController.text.trim(),
                      surname: bloc.surnameTextEditingController.text.trim(),
                      email: bloc.emailTextEditingController.text.trim(),
                    ),
                  );
                } else {
                  Future.error('Please fill in the form.');
                }
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomIconButton(
              tap: () {},
              width: size.width,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Already have an account?',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: CustomColors.SECONDARY,
                          ),
                    ),
                    TextSpan(
                      text: ' Signin',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: CustomColors.DARKGREEN,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
