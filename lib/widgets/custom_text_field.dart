import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  CustomTextFormField({Key? key, required this.hintText}) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: false,
      decoration: InputDecoration(
        counterText: "",
        errorStyle: const TextStyle(fontSize: 0.028),
        hintText: widget.hintText,
        isDense: true,
        contentPadding: const EdgeInsets.fromLTRB(20, 28, 0, 0),
        hintStyle: Theme.of(context).textTheme.subtitle1,
        filled: true,
        fillColor: Colors.white,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          borderSide: BorderSide(
            color: CustomColors.SECONDARY,
            style: BorderStyle.solid,
            width: 3,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: CustomColors.PRIMARY, width: 2.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
