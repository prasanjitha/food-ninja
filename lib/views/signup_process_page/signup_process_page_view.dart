import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/views/payment_method_page/payment_method_page_event.dart';
import 'package:food_ninja/views/signup_process_page/signup_process_page_event.dart';
import 'package:food_ninja/views/signup_process_page/signup_process_page_state.dart';
import 'package:food_ninja/widgets/back_icon_button.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';
import '../payment_method_page/payment_method_page_bloc.dart';
import 'signup_process_page_bloc.dart';

class SignupProcessPageView extends StatefulWidget {
  const SignupProcessPageView({Key? key}) : super(key: key);

  @override
  _SignupProcessPageViewState createState() => _SignupProcessPageViewState();
}

class _SignupProcessPageViewState extends State<SignupProcessPageView> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SignupProcessPageBloc bloc =
        BlocProvider.of<SignupProcessPageBloc>(context);
    PaymentMethodPageBloc blocPayment =
        BlocProvider.of<PaymentMethodPageBloc>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                CustomBackIconButton(),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Fill in your bio to get started',
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
                CustomTextFormField(
                    controller: firstNameController, hintText: 'First Name'),
                const SizedBox(
                  height: 10.0,
                ),
                CustomTextFormField(
                    controller: lastNameController, hintText: 'Last Name'),
                const SizedBox(
                  height: 10.0,
                ),
                CustomTextFormField(
                    controller: mobileController, hintText: 'Mobile Number'),
                const SizedBox(
                  height: 10.0,
                ),
                BlocBuilder<SignupProcessPageBloc, SignupProcessPageState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    }
                    return SizedBox(
                      height: 200.0,
                      width: 300,
                      child: ListView.builder(
                        itemCount: state.users.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Text(state.users[index].firstName),
                              Text(state.users[index].lastName),
                            ],
                          );
                        },
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
        child: CustomButton(
          text: 'Next',
          tap: () {
            blocPayment
                .add(NamePaymentMethod(name: firstNameController.text.trim()));
            bloc.add(
              GetUserInputEvent(
                fistName: firstNameController.text.trim(),
                lastName: lastNameController.text.trim(),
                mobile: mobileController.text.trim(),
              ),
            );
            // Navigator.pushNamed(
            //   context,
            //   PaymentMethodRoute,
            // );
          },
        ),
      ),
    );
  }
}
