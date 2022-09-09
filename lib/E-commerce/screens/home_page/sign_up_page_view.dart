import 'package:flutter/material.dart';
import 'package:food_ninja/themes/custom_colors.dart';

class SignUpPageView extends StatefulWidget {
  const SignUpPageView({Key? key}) : super(key: key);

  @override
  _SignUpPageViewState createState() => _SignUpPageViewState();
}

class _SignUpPageViewState extends State<SignUpPageView> {
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
                'Sign Up',
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 40.0,
              ),
              CustomFillTextField(
                controller: nameTextEditingController,
                title: 'Name',
              ),
              const SizedBox(
                height: 20.0,
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
              const CustomButtom(
                title: 'SIGN UP',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  final String title;
  const CustomButtom({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: CustomColors.ERROR,
      ),
      child: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline3!.copyWith(
                color: CustomColors.BACKGROUND,
                letterSpacing: 1.0,
              ),
        ),
      ),
    );
  }
}

class CustomFillTextField extends StatefulWidget {
  final String title;
  final TextEditingController? controller;
  const CustomFillTextField({
    Key? key,
    required this.title,
    this.controller,
  }) : super(key: key);

  @override
  State<CustomFillTextField> createState() => _CustomFillTextFieldState();
}

class _CustomFillTextFieldState extends State<CustomFillTextField> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        setState(() {
          name = value;
        });
      },
      controller: widget.controller,
      decoration: InputDecoration(
        suffixIcon: name.isNotEmpty
            ? Image.asset('assets/ecom/outline-check-24px.png')
            : const Text(''),
        border: InputBorder.none,
        hintText: widget.title,
        filled: true,
        fillColor: CustomColors.BACKGROUND,
      ),
    );
  }
}
