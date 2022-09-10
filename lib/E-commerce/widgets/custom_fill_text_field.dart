import 'package:flutter/material.dart';

import '../../themes/custom_colors.dart';

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
