

import 'package:flutter/material.dart';
import 'package:lemon_widgets/lemon_widgets.dart';
import 'package:lemon_widgets/src/defaults.dart';

class AnimateCurved extends StatelessWidget {

  final Curve curve;
  final AnimateBuilder builder;
  final Duration duration;

  const AnimateCurved({
    super.key,
    this.curve = defaultCurve,
    this.duration = defaultDuration,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) => Animate(
        duration: duration,
        buildAnimation: (controller) => CurvedAnimation(
          parent: controller,
          curve: curve,
        ),
      builder: builder,
    );

}
