import 'package:can/screens/Find_Doctor.dart';
import 'package:can/screens/Hospital.dart';
import 'package:can/screens/News/news.dart';
import 'package:can/screens/camera.dart';
import 'package:can/screens/profile/p_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                backgroundImage: AssetImage(
                  'assets/images/Salma saad.png',
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xff8cbed6),
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
              onTap: () => MyProfile(),
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
        backgroundColor: Color(0xff8cbed6),
        //iconTheme: IconThemeData(color: ),
        title: Text(
          'Home',
          style: TextStyle(
            color: Color(0xff374c55),
            fontSize: 30,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyProfile(),
                  ),
                );
              },
              child: CircleAvatar(
                backgroundColor: Color(0xff8cbed6),
                radius: 15,
                child: Icon(
                  Icons.perm_identity_rounded,
                  size: 30,
                  // color: Color(0xffd6d382),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        color: Color(0xff6faccb),
        child: Container(
          height: 60,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        highlightElevation: 50,
        backgroundColor: Color(0xff52b4ec),
        splashColor: Color(0xff8cbed6),
        child: Icon(
          Icons.camera_alt_outlined,
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Camera(),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
                      Color(0x668cbed6),
                      Color(0x998cbed6),
                      Color(0xcc8cbed6),
                      Color(0xff8cbed6),
                    ],
                  ),
                  color: Colors.lightBlue[100],
                ),
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(10),
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 30,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FindDoctor(),
                              ),
                            );
                          },
                          child: Container(
                            height: 200,
                            width: 100,
                            margin: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/Doctors.png',
                                  width: 150,
                                  height: 120,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 20,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    'Find Doctor',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => FindHospital(),
                            ),
                          );
                        },
                        child: Container(
                          height: 200,
                          width: 100,
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Hospital building.png',
                                width: 140,
                                height: 110,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 20,
                                width: double.infinity,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  'Find Hospital',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: GestureDetector(
                        /*onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => test(),
                            ),
                          );
                        },*/
                        child: Container(
                          height: 200,
                          width: 100,
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/get report.png',
                                width: 140,
                                height: 110,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 20,
                                width: double.infinity,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  'Get Report',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => FindDoctor(),
                            ),
                          );
                        },
                        child: Container(
                          height: 200,
                          width: 100,
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/diagnosis.png',
                                width: 140,
                                height: 110,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 20,
                                width: double.infinity,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  'Get Medicine',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => News(),
                            ),
                          );
                        },
                        child: Container(
                          height: 200,
                          width: 100,
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/News-bro.png',
                                width: 140,
                                height: 110,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 20,
                                width: double.infinity,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  'News',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => FindDoctor(),
                            ),
                          );
                        },
                        child: Container(
                          height: 200,
                          width: 100,
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Cheer up.png',
                                width: 140,
                                height: 110,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 20,
                                width: double.infinity,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  'Motivation',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
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
            ],
          ),
        ),
      ),
    );
  }
}
