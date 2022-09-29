import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/E-commerce/screens/sign_up_page/sign_up_page_state.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/views/add_products/add_phone_page/add_phone_page_view.dart';

import '../../widgets/custom_bottom_line.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_fill_text_field.dart';
import '../../widgets/ecom_progress_indicator.dart';
import '../../widgets/social_image_button.dart';
import 'sign_up_page_bloc.dart';
import 'sign_up_page_event.dart';

class SignUpPageView extends StatefulWidget {
  const SignUpPageView({Key? key}) : super(key: key);

  @override
  _SignUpPageViewState createState() => _SignUpPageViewState();
}

class _SignUpPageViewState extends State<SignUpPageView> {
  @override
  Widget build(BuildContext context) {
    SignUpPageBloc signUpBloc = BlocProvider.of<SignUpPageBloc>(context);
    var scaffold = Scaffold(
      backgroundColor: CustomColors.SCAFFOLD,
      appBar: AppBar(
        backgroundColor: CustomColors.SCAFFOLD,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: CustomColors.SURFACED,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign Up',
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 40.0,
              ),
              CustomFillTextField(
                controller: signUpBloc.nameTextEditingController,
                title: 'Name',
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomFillTextField(
                controller: signUpBloc.emailTextEditingController,
                title: 'Email',
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomFillTextField(
                controller: signUpBloc.passwordTextEditingController,
                title: 'Password',
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Already have an account?',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    color: CustomColors.ERROR,
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomButtom(
                tap: () {
                  signUpBloc.add(SubmitUserDataEvent(
                    name: signUpBloc.nameTextEditingController.text.trim(),
                    email: signUpBloc.emailTextEditingController.text.trim(),
                    password:
                        signUpBloc.passwordTextEditingController.text.trim(),
                  ));
                },
                title: 'SIGN UP',
              ),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text('Or sign up with social account',
                    style: Theme.of(context).textTheme.headline4,
                    textAlign: TextAlign.center),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  SocialImageButton(
                    iconPath: 'assets/ecom/Group.png',
                  ),
                  SocialImageButton(
                    iconPath:
                        'assets/ecom/iconfinder_square-facebook_317727.png',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomLine(),
    );

    return BlocBuilder<SignUpPageBloc, SignUpPageState>(
      buildWhen: (previous, current) => previous.isLoading != current.isLoading,
      builder: (context, state) {
        if (state.isLoading) {
          return CustomCircularProgressIndicator(
            body: scaffold,
          );
        }
        return scaffold;
      },
    );
  }
}
