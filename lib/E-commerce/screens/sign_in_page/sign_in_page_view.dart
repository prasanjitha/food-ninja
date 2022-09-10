import 'package:flutter/material.dart';
import 'package:food_ninja/themes/custom_colors.dart';

import '../../widgets/custom_bottom_line.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_fill_text_field.dart';
import '../../widgets/social_image_button.dart';

class SignInPageView extends StatefulWidget {
  const SignInPageView({Key? key}) : super(key: key);

  @override
  _SignInPageViewState createState() => _SignInPageViewState();
}

class _SignInPageViewState extends State<SignInPageView> {
  late TextEditingController nameTextEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.SCAFFOLD,
      appBar: AppBar(
        backgroundColor: CustomColors.SCAFFOLD,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: CustomColors.ONSURFACE,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login',
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 40.0,
              ),
              const CustomFillTextField(
                title: 'Email',
              ),
              const SizedBox(
                height: 20.0,
              ),
              const CustomFillTextField(
                title: 'Password',
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot your password?',
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
              const CustomButtom(
                title: 'LOGIN',
              ),
              const SizedBox(
                height: 80.0,
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
  }
}
