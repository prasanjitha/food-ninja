import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final String prefixIconPath;
  final bool obscureText;
  final void Function(String)? onChange;
  final TextEditingController? controller;
  final Color fillColor;

  CustomTextFormField({
    Key? key,
    required this.hintText,
    this.prefixIconPath = '',
    this.obscureText = false,
    this.onChange,
    this.controller,
    this.fillColor = CustomColors.BACKGROUND,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText,
      onChanged: widget.onChange,
      controller: widget.controller,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIconPath.isNotEmpty
            ? Image.asset(widget.prefixIconPath)
            : const Text(''),
        counterText: "",
        errorStyle: const TextStyle(fontSize: 0.028),
        hintText: widget.hintText,
        isDense: true,
        contentPadding: const EdgeInsets.fromLTRB(20, 28, 0, 0),
        hintStyle: Theme.of(context).textTheme.subtitle1,
        filled: true,
        fillColor: widget.fillColor,
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
