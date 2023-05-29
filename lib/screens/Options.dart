import 'package:can/screens/login_screen/Login_Screen.dart';
import 'package:can/screens/Register_Screen.dart';
import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  const Options({Key? key}) : super(key: key);

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 80,
                  child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset(
                        'assets/images/can.png',
                      )),
                ),
                Padding(padding: EdgeInsets.all(30)),
                //doctor
                Opacity(opacity: .5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),color: Colors.white70
                    ),
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.transparent),
                      ),
                    ),
                  ),
                ),
                //user
                Opacity(
                  opacity: .5,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),color: Colors.white70
                    ),
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Register()));
                      },
                      child: Text(
                        'REGISTER',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.transparent),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}
