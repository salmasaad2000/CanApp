import 'package:can/screens/Options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            body: AnnotatedRegion<SystemUiOverlayStyle>(
                value: SystemUiOverlayStyle.light,
                child: GestureDetector(
                  child: Stack(children: <Widget>[
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0x668cbed6),
                            Color(0x998cbed6),
                            Color(0xcc8cbed6),
                            Color(0xff8cbed6),
                          ],
                        ),
                        // color: Colors.lightBlue[100],
                      ),
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.greenAccent[400],
                          radius: 80,
                          child: Container(
                              height: 200,
                              width: 200,
                              child: Image.asset(
                                'assets/images/can.png',
                              )),
                        ),
                      ),
                    ),
                  ]),
                ))));
  }
}
