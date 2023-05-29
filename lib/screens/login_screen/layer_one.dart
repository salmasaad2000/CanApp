import 'package:can/screens/login_screen/color.dart';
import 'package:flutter/material.dart';

class LayerOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 700,
      decoration: BoxDecoration(
        color: layerOneBg,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(80),
            topLeft: Radius.circular(60.0),
            bottomRight: Radius.circular(60.0)
        ),
      ),
    );
  }
}