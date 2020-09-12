import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String _buttonText;
  final Function _submitFunction;

  AdaptiveFlatButton(this._buttonText, this._submitFunction);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              '$_buttonText',
              style: TextStyle(),
            ),
            onPressed: _submitFunction,
            color: Theme.of(context).primaryColor)
        : RaisedButton(
            onPressed: _submitFunction,
            textColor: Theme.of(context).textTheme.button.color,
            child: Text('$_buttonText', style: TextStyle()),
            color: Theme.of(context).primaryColor);
  }
}
