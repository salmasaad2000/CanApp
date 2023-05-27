import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter/services.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? Key}) : super(key: Key);
  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Patient Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xff8cbed6),
        actions: [
          Container(
            child: Row(
              children: [
                Icon(Icons.report_gmailerrorred_outlined),
                Text(
                  'Report',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ],
      ),
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
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ProfileDetailRow(
                            title: 'Registration Number',
                            value: '2020-ASDF-2021'),
                        SizedBox(
                          width: 10,
                        ),
                        ProfileDetailRow(
                          title: ' AGE',
                          value: '22',
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ProfileDetailRow(
                          title: ' My Doctor',
                          value: 'Mohammed HGIUGUI',
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        ProfileDetailRow(
                          title: 'Next Appointment ',
                          value: '26/4/2023',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ProfileDetailRow(
                          title: 'place',
                          value: 'Cairo',
                        ),
                        ProfileDetailRow(
                          title: 'Date of Birth',
                          value: '1 oct 2001',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: [
                        ProfileDetailColumn(
                          title: 'Email',
                          value: 'mariam23@gmail.com',
                        ),
                        ProfileDetailColumn(
                          title: 'Father Name',
                          value: ' Salah Ezzat',
                        ),
                        ProfileDetailColumn(
                          title: 'Mother Name',
                          value: 'Abeer Mohamed',
                        ),
                        ProfileDetailColumn(
                          title: 'Phone Number',
                          value: '0124522223',
                        ),
                      ],
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

class ProfileDetailRow extends StatelessWidget {
  const ProfileDetailRow({Key? key, required this.title, required this.value})
      : super(key: key);
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Color(0xFF313131),
                    fontSize: 19,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(value, style: Theme.of(context).textTheme.bodySmall),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 35,
                  child: Divider(
                    thickness: 1.0,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.lock_outline,
              size: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileDetailColumn extends StatelessWidget {
  const ProfileDetailColumn(
      {Key? key, required this.title, required this.value})
      : super(key: key);
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Color(0xFF313131),
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 10),
                Text(value, style: Theme.of(context).textTheme.bodySmall),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 92,
                  child: Divider(
                    thickness: 1.0,
                  ),
                )
              ],
            ),
            Icon(
              Icons.lock_outline,
              size: 10,
            ),
          ],
        ),
      ),
    );
  }
}
