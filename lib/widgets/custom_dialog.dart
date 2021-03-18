import 'package:flutter/material.dart';
import 'package:jogo_da_velha/core/constants.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final Function onPressed;

  const CustomDialog({
    this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      actions: [
        FlatButton(
          child: Text(RECOMECAR),
          onPressed: () {
            Navigator.pop(context);
            onPressed();
          },
        ),
      ],
    );
  }
}
