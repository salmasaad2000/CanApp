import 'package:flutter/material.dart';

import 'color.dart';

class LayerTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 399,
      height: 584,
      decoration: BoxDecoration(
        color: layerTwoBg,
        borderRadius: BorderRadius.only(

          topLeft: Radius.circular(110.0),
          bottomRight: Radius.circular(90.0),
          bottomLeft: Radius.circular(50.0),
        ),
      ),
    );
  }
}