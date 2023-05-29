import 'package:can/screens/Options.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateLogin();
  }

  _navigateLogin() async {
    await Future.delayed(Duration(seconds: 5), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Options(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: GestureDetector(
        child: Stack(children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/primaryBg.png'),
                fit: BoxFit.cover,
              )),
              child: Stack(children: <Widget>[])),
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 80,
              child: Container(
                  height: 200,
                  width: 200,
                  child: Image.asset(
                    'assets/images/can.png',
                  )),
            ),
          ),
        ]),
      )),
    );
  }
}
