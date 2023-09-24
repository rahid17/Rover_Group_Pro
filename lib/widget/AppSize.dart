import 'package:flutter/material.dart';

class KAppSize{
static double getHeight(
  {required BuildContext context, required double size}) {
    double height = MediaQuery.of(context).size.height;
    return (height/100)*size;
  }

  static double getWidth(
  {required BuildContext context, required double size}) {
    double width = MediaQuery.of(context).size.width;
    return (width/100)*size;
  }
}