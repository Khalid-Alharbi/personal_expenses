import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  const AdaptiveFlatButton(this.text, this.handler, {Key? key})
      : super(key: key);

  final String text;
  final Function handler;

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoButton(
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: handler as void Function()?,
      );
    } else {
      return FlatButton(
        textColor: Theme.of(context).primaryColor,
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: handler as void Function()?,
      );
    }
  }
}
