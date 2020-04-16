import 'package:flutter/material.dart';

class AxisPair {
  Animation<double> x;
  Animation<double> y;

  AxisPair({
    @required this.x,
    @required this.y
  });

  Listenable getListenable() {
    return Listenable.merge([x,y]);
  }
}

class AbsolutePositionTween extends Tween<double> {
  AbsolutePositionTween({ double begin, double end }): super(begin: begin, end: end);
}