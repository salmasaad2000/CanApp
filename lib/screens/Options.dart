import 'package:can/screens/Login_Screen.dart';
import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  const Options({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyan,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.greenAccent[400],
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
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => LoginScreen()
                    ));
                    },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                ),
              ),
              //user
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: TextButton(
                  onPressed: () { Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginScreen()
                      ));},
                  child: Text(
                    'REGISTER',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
