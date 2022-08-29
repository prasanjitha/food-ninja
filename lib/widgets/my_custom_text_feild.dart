import 'package:flutter/material.dart';

class MyCustomTextFeild extends StatefulWidget {
  final void Function(String)? onSaved;
  final TextEditingController? controller;
  const MyCustomTextFeild({
    Key? key,
    this.onSaved,
    this.controller,
  }) : super(key: key);

  @override
  State<MyCustomTextFeild> createState() => _MyCustomTextFeildState();
}

class _MyCustomTextFeildState extends State<MyCustomTextFeild> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Value can\'t be empty';
        }
        return null;
      },
      onChanged: widget.onSaved,
      onSaved: (newValue) => widget.onSaved,
      decoration: const InputDecoration(hintText: 'Enter Name'),
    );
  }
}
