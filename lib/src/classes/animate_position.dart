
import 'package:flutter/cupertino.dart';
import 'package:lemon_widgets/src/functions/interpolate.dart';

import '../enums/side.dart';
import 'animate_curved.dart';


class AnimatePosition extends StatelessWidget {
  final Widget child;
  final double startX;
  final double startY;
  final double endX;
  final double endY;
  final Side side;
  final Curve curve;

  const AnimatePosition({
    super.key,
    required this.child,
    required this.side,
    this.startX = 0,
    this.startY = 0,
    this.endX = 0,
    this.endY = 0,
    this.curve = Curves.easeInOutQuad,
  });

  @override
  Widget build(BuildContext context) => AnimateCurved(
        curve: curve,
        builder: (context, child, value) {
          switch (side) {
            case Side.top:
              return Positioned(
                top: interpolate(startY, endY, value), child: this.child,
              );
            case Side.right:
              return Positioned(
                right: interpolate(startX, endX, value), child: this.child,
              );
            case Side.bottom:
              return Positioned(
                bottom: interpolate(startY, endY, value), child: this.child,
              );
            case Side.left:
              return Positioned(
                right: interpolate(startX, endX, value), child: this.child,
              );
          }
        }
    );


}