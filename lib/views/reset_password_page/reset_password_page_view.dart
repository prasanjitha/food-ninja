import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/views/reset_password_page/reset_password_page_event.dart';
import 'package:food_ninja/widgets/via_method.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../widgets/back_icon_button.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';
import 'reset_password_page_bloc.dart';

class ResetPasswordPageView extends StatefulWidget {
  const ResetPasswordPageView({Key? key}) : super(key: key);

  @override
  _ResetPasswordPageViewState createState() => _ResetPasswordPageViewState();
}

class _ResetPasswordPageViewState extends State<ResetPasswordPageView> {
  @override
  Widget build(BuildContext context) {
    ResetPasswordPageBloc bloc =
        BlocProvider.of<ResetPasswordPageBloc>(context);
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
                'Reset your password ',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.start,
              ),
              Text(
                'Of your account ',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Select which contact details should we use to reset your password',
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(
                height: 40.0,
              ),
              CustomTextFormField(
                validator: RequiredValidator(errorText: "Password is required"),
                controller: null,
                onChange: (_) {
                  bloc.add(ChangeNewPasswordEvent(_));
                },
                hintText: 'New Password',
              ),
              const SizedBox(
                height: 10.0,
              ),
              CustomTextFormField(
                validator: RequiredValidator(errorText: "Password is required"),
                controller: null,
                onChange: (_) {
                  bloc.add(ChangeConPasswordEvent(_));
                },
                hintText: 'Confirm Password',
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
            bloc.add(SubmitDataEvent());
            Navigator.pushNamed(
              context,
              SuccessNotificationRoute,
            );
          },
        ),
      ),
    );
  }
}
