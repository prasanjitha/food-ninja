import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import '../themes/custom_colors.dart';

class LineInputFeild extends StatefulWidget {
  final String labelText;
  final bool isObscureText;
  final int maxLength;
  final bool isShowLength;
  final String hintText;
  final FieldValidator validator;
  final TextEditingController? controller;
  final void Function(String)? onSaved;
  final void Function(String)? onChange;
  final String keyBoardType;
  const LineInputFeild({
    Key? key,
    required this.labelText,
    this.isObscureText = true,
    this.controller,
    required this.validator,
    this.maxLength = 50,
    this.isShowLength = false,
    this.hintText = '****',
    this.onSaved,
    this.onChange,
    this.keyBoardType = 'text',
  }) : super(key: key);

  @override
  State<LineInputFeild> createState() => _LineInputFeildState();
}

class _LineInputFeildState extends State<LineInputFeild> {
  bool _obscureTextConPassword = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyBoardType == 'text'
          ? TextInputType.text
          : TextInputType.phone,
      obscureText:
          widget.isObscureText ? _obscureTextConPassword : widget.isObscureText,
      controller: widget.controller,
      validator: widget.validator,
      maxLength: widget.isShowLength ? widget.maxLength : null,
      onChanged: widget.onChange,
      cursorColor: CustomColors.ONSURFACE,
      decoration: InputDecoration(
        errorStyle: const TextStyle(fontSize: 0.012),
        labelText: widget.labelText,
        labelStyle: Theme.of(context).textTheme.headline3,
        hintText: '',
        hintStyle: Theme.of(context).textTheme.headline5,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: widget.isObscureText
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureTextConPassword = !_obscureTextConPassword;
                  });
                },
                child: Icon(
                  _obscureTextConPassword
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: CustomColors.PRIMARY,
                ),
              )
            : const Text(''),
      ),
    );
  }
}
