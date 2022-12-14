import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/views/payment_method_page/payment_method_page_event.dart';
import 'package:food_ninja/views/payment_method_page/payment_method_page_state.dart';
import 'package:food_ninja/widgets/payment_method_container.dart';
import '../../widgets/back_icon_button.dart';
import '../../widgets/custom_button.dart';
import 'payment_method_page_bloc.dart';

class PaymentMethodPageView extends StatefulWidget {
  const PaymentMethodPageView({Key? key}) : super(key: key);

  @override
  _PaymentMethodPageViewState createState() => _PaymentMethodPageViewState();
}

class _PaymentMethodPageViewState extends State<PaymentMethodPageView> {
  @override
  Widget build(BuildContext context) {
    PaymentMethodPageBloc bloc =
        BlocProvider.of<PaymentMethodPageBloc>(context);
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
              CustomBackIconButton(),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Payment Method',
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
              PaymentMethodContainer(
                  tap: () {
                    bloc.add(ChoosePaymentMethod(method: 'paypal'));
                  },
                  iconPath: 'assets/icons/paypal.png'),
              const SizedBox(
                height: 10.0,
              ),
              PaymentMethodContainer(
                  tap: () {
                    bloc.add(ChoosePaymentMethod(method: 'payoneer'));
                  },
                  iconPath: 'assets/icons/Payoneer_logo.png'),
              const SizedBox(
                height: 10.0,
              ),
              PaymentMethodContainer(
                  tap: () {
                    bloc.add(ChoosePaymentMethod(method: 'visa'));
                  },
                  iconPath: 'assets/icons/visa.png'),
              const SizedBox(
                height: 10.0,
              ),
              BlocBuilder<PaymentMethodPageBloc, PaymentMethodPageState>(
                buildWhen: (previous, current) =>
                    previous.isLoading != current.isLoading,
                builder: (context, state) {
                  return Column(
                    children: [
                      Text(
                        state.error,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Text(
                        state.paymentMethod,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                  );
                },
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
              uploadImageRoute,
            );
          },
        ),
      ),
    );
  }
}
