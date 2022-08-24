import 'package:flutter/material.dart';

class CustomBackIconButton extends StatelessWidget {
  CustomBackIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('object');
        Navigator.of(context).pop();
      },
      child: Image.asset(
        'assets/icons/IconBack.png',
      ),
    );
  }
}
