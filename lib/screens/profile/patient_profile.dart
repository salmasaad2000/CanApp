import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? Key}) : super(key: Key);
  static String routeName = 'HomeScreen';
  static const sizedBox = SizedBox(height: 100);

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
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(10),
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 30,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.black54,
                        backgroundImage: AssetImage('assets/images/Salma saad.png'),
                      ),
                    ),
                    Container(
                      child: Text(
                        'MARIAM SALAH',
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Container(
                      child: ProfileDetailsRow(title: 'Name', value: 'MARIAM'),
                    ),
                    Container(
                      child: ProfileDetailsRow(
                          title: 'Father Name', value: 'Salah Ezzat'),
                    ),
                    Container(
                      child: ProfileDetailsRow(
                        title: 'AGE',
                        value: '22',
                      ),
                    ),
                    Container(
                      child: ProfileDetailsRow(
                        title: 'Phone Number',
                        value: '0114567868',
                      ),
                    ),
                    Container(
                      child: ProfileDetailsRow(
                          title: 'governorate', value: 'Cairo'),
                    ),
                    Container(
                      child: ProfileDetailsRow(
                        title: 'Date Of Birth',
                        value: '1 Oct 2001',
                      ),
                    ),
                    Container(
                      child: ProfileDetailsRow(
                          title: 'My Doctor', value: 'Magdi Yaaqoub'),
                    ),
                    Container(
                      child: ProfileDetailsRow(
                        title: 'Next Appointment',
                        value: '23/4/2023',
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

class ProfileDetailsRow extends StatelessWidget {
  const ProfileDetailsRow({Key? key, required this.title, required this.value})
      : super(key: key);
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 1, left: 9, top: 15),
      width: MediaQuery.of(context).size.width / 2.5,
      height: 5,
      color: Colors.white10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Colors.black54,
                  fontWeight: FontWeight.w800,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                value,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Colors.black87,
                  fontWeight: FontWeight.w800,
                  fontSize: 17.0,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.3,
                child: Divider(
                  thickness: 2.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
