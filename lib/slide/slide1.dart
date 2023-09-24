import 'package:flutter/material.dart';

import '../widget/AppSize.dart';

class SliderPage1 extends StatelessWidget {
  const SliderPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: KAppSize.getHeight(context: context, size: 20),
      width: KAppSize.getWidth(context: context, size: 20),
    );
  }
}