
import 'package:flutter/cupertino.dart';
import 'package:lemon_widgets/src/functions/interpolate.dart';

import '../enums/side.dart';
import 'animate_curved.dart';

class AnimatePosition extends StatelessWidget {
  final Widget child;
  final double start;
  final double end;
  final Side side;
  final Curve curve;
  final Duration duration;

  const AnimatePosition({
    super.key,
    required this.child,
    required this.side,
    this.start = 0,
    this.end = 0,
    this.curve = Curves.easeInOutQuad,
    this.duration = const Duration(milliseconds: 300),
  });

  @override
  Widget build(BuildContext context) => AnimateCurved(
        duration: duration,
        curve: curve,
        builder: (context, child, value) {
          final interpolatedValue = interpolate(start, end, value);
          switch (side) {
            case Side.top:
              return Positioned(top: interpolatedValue, child: this.child);
            case Side.right:
              return Positioned(right: interpolatedValue, child: this.child);
            case Side.bottom:
              return Positioned(bottom: interpolatedValue, child: this.child);
            case Side.left:
              return Positioned(left: interpolatedValue, child: this.child);
          }
        }
    );


}