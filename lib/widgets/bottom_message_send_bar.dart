import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class BottomMessageSendBar extends StatelessWidget {
  const BottomMessageSendBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: MediaQuery.of(context).viewInsets,
      color: CustomColors.SURFACE,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Text Here',
                  isDense: true,
                  contentPadding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  hintStyle: Theme.of(context).textTheme.subtitle1,
                  filled: true,
                  fillColor: Colors.white,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      color: CustomColors.SECONDARY,
                      style: BorderStyle.solid,
                      width: 3,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: width * 0.0256,
            ),
            const Icon(
              Icons.send,
              color: CustomColors.PRIMARY,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
