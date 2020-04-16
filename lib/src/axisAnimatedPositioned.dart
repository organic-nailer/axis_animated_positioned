import 'package:axisanimatedpositioned/src/axisPair.dart';
import 'package:flutter/material.dart';

class AxisAnimatedPositioned extends AnimatedWidget {
  final AxisPair axis;
  final Widget child;
  AxisAnimatedPositioned({
    Key key,
    @required this.axis,
    @required this.child,
  }) : assert(axis != null),
        assert(child != null),
        super(key: key, listenable: axis.getListenable());


  bool visible = true;

  void toInvisible() {
    visible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Visibility(
        child: child,
        visible: visible,
      ),
      top: axis.y.value,
      left: axis.x.value,
    );
  }
}