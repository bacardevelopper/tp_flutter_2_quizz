import 'package:flutter/material.dart';

class CustomText extends Text {
  CustomText(String data, {color: Colors.black})
      : super(data, style: new TextStyle(color: color)) {}
}
