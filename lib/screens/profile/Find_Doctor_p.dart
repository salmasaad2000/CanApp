import 'package:can/screens/Home_Screen.dart';
import 'package:can/screens/profile/Doctor_Des.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Doctor extends StatefulWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  _DoctorState createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Salma Saad'),
              accountEmail: Text('example@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/profile2.png',
                    width: 140,
                    height: 140,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home_sharp),
              title: Text('Home'),
              onTap: () => HomeScreen(),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('profile'),
              onTap: () => p_Doctor(),
            ),
            ListTile(
              leading: Icon(Icons.article_outlined),
              title: Text('Scanner Report'),
              onTap: () => null,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () => null,
            ),
            Divider(),
            ListTile(
              title: Text('LogOut'),
              leading: Icon(Icons.exit_to_app),
              onTap: () => null,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Find Doctor',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        backgroundColor: Color(0xff97c6d8),
      ),
      backgroundColor: Colors.transparent,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff97c6d8),
                      Color(0xff8cbed6),
                      Color(0xcc9bbfcf),
                      Color(0xcc8cbed6),
                    ],
                  ),
                  color: Colors.lightBlue[100],
                ),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          height: 280,
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              double innerHeight = 350;
                              double innerWidth = 300;
                              return Stack(
                                fit: StackFit.expand,
                                children: [
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      height: innerHeight * 0.72,
                                      width: innerWidth,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Color(0xffb2d2df),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 80,
                                          ),
                                          Text(
                                            'Dr.Ahmed Magdy',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  39, 105, 171, 1),
                                              fontSize: 37,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                'Medical major',
                                                style: TextStyle(
                                                  color: Colors.grey[700],
                                                  fontSize: 25,
                                                ),
                                              ),
                                              Text(
                                                'Specified in skin cancer',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      39, 105, 171, 1),
                                                  fontSize: 25,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    left: 0,
                                    right: 0,
                                    child: Center(
                                      child: Container(
                                        child: Image.asset(
                                          'assets/images/profile2.png',
                                          width: innerWidth * 0.40,

                                          //fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 500,
                            //width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xffcfe8ee),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Description',
                                    style: TextStyle(
                                      color: Color.fromRGBO(39, 105, 171, 1),
                                      fontSize: 28,
                                    ),
                                  ),
                                  Divider(
                                    thickness: 2.5,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Specified in skin cancer\n\nGraduated from medical cairo university \n\nMasters in detecting skin cancer in early stage',
                                    style: TextStyle(
                                      color: Color.fromRGBO(39, 105, 171, 1),
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
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
