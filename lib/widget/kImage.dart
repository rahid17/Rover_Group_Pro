import 'package:flutter/material.dart';

class SImage extends StatelessWidget {
  const SImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: Image.asset("assets/bn_scout_logo.png"));
  }
}