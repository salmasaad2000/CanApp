import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'profile/Find_Doctor_p.dart';

class FindDoctor extends StatefulWidget {
  const FindDoctor({Key? key}) : super(key: key);

  @override
  _FindDoctorState createState() => _FindDoctorState();
}

class _FindDoctorState extends State<FindDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8cbed6),
        title: Text(
          'Find Doctor',
          style: TextStyle(color: Colors.black),
        ),
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
                      Color(0x668cbed6),
                      Color(0x998cbed6),
                      Color(0xcc8cbed6),
                      Color(0xff8cbed6),
                    ],
                  ),
                  color: Colors.lightBlue[100],
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Doctor(),
                          ),
                        );
                      },
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => buildChatItem(),
                        separatorBuilder: (context, index) => SizedBox(
                          height: 20.0,
                        ),
                        itemCount: 20,
                      ),
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

Widget buildChatItem() => Container(
      width: 60.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage(
                      'assets/images/dr.magdi.png',
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 5.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr.Ahmed Magdy',
                    style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.normal,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'Medical major ',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        'Specified in skin cancer',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
