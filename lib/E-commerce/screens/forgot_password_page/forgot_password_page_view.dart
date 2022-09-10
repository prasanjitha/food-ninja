import 'package:flutter/material.dart';
import 'package:food_ninja/themes/custom_colors.dart';

import '../../widgets/custom_bottom_line.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_fill_text_field.dart';

class ForgotPasswordPageView extends StatefulWidget {
  const ForgotPasswordPageView({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageViewState createState() => _ForgotPasswordPageViewState();
}

class _ForgotPasswordPageViewState extends State<ForgotPasswordPageView> {
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
                'Forgot password',
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 60.0,
              ),
              Text(
                'Please, enter your email address. You will receive a link to create a new password via email.',
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(
                height: 40.0,
              ),
              const CustomFillTextField(
                title: 'Email',
              ),
              const SizedBox(
                height: 60.0,
              ),
              CustomButtom(
                tap: () {},
                title: 'SEND',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomLine(),
    );
  }
}
