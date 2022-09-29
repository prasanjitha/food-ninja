import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import '../../../themes/custom_colors.dart';

class CustomBorderTextField extends StatelessWidget {
  final String hitText;
  final TextEditingController controller;
  final FieldValidator validator;
  const CustomBorderTextField({
    Key? key,
    required this.hitText,
    required this.controller,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
        hintText: hitText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: 1,
            color: CustomColors.DARKGREEN,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: 1,
            color: CustomColors.DARKGREEN,
          ),
        ),
        filled: false,
      ),
    );
  }
}
