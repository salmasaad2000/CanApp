
import 'package:can/screens/Home_Screen.dart';
import 'package:can/screens/Register_Screen.dart';
import 'package:can/screens/login_screen/color.dart';
import 'package:flutter/material.dart';

class LayerThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 584,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 59,
            top: 99,
            child: Text(
              'Username',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
              left: 59,
              top: 129,
              child: Container(
                width: 310,
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Enter Email',
                    hintStyle: TextStyle(color: hintText),
                  ),
                ),
              )),
          Positioned(
            left: 59,
            top: 199,
            child: Text(
              'Password',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
              left: 59,
              top: 229,
              child: Container(
                width: 310,
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Enter Password',
                    hintStyle: TextStyle(color: hintText),
                  ),
                ),
              )),
          Positioned(
            top: 345,
            right: 40,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Register()),
                );
              },
              child: Text(
                'Register',
                style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20),
              ),
            ),
          ),
          Positioned(
            right: 30,
            top: 300,

            child: Container(
              width: 99,
              height: 35,
              decoration: BoxDecoration(
                color: signInButton,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeScreen()),
                  );
                },
                child: Text(
                  'sign in',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
         


        ],
      ),
    );
  }
}
