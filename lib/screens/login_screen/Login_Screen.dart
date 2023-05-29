import 'package:can/screens/login_screen/Layer_three.dart';
import 'package:can/screens/login_screen/Layer_two.dart';
import 'package:can/screens/login_screen/layer_one.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/primaryBg.png'),
              fit: BoxFit.cover,
            )),
        child: Stack(
          children: <Widget>[
            Positioned(

                top: 200,
                left: 59,
                child: Container(
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                )),
            Positioned(top: 280, right: 10, bottom: 10, left: 10, child: LayerOne()),
            Positioned(top: 300, right: 20, bottom: 6, left: 10, child: LayerTwo()),
            Positioned(top: 320, right: 10, bottom: 50, left: 5, child: LayerThree()),
          ],
        ),
      ),
    );}}