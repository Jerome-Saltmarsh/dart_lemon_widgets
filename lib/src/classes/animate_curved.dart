

import 'package:flutter/material.dart';
import 'package:lemon_widgets/lemon_widgets.dart';

import 'animate.dart';

class AnimateCurved extends StatelessWidget {

  final Curve curve;
  final AnimateBuilder builder;

  const AnimateCurved({
    super.key,
    this.curve = Curves.easeInOutQuad,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) => Animate(
        buildAnimation: (controller) => CurvedAnimation(
          parent: controller,
          curve: curve,
        ),
      builder: builder,
    );

}
