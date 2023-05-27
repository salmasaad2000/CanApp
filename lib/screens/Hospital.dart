import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FindHospital extends StatefulWidget {
  const FindHospital({Key? key}) : super(key: key);

  @override
  _FindHospitalState createState() => _FindHospitalState();
}

class _FindHospitalState extends State<FindHospital> {
  final List<Map<String, dynamic>> items = List.generate(
      20,
          (index) => {
        "id": index,
        "title": '(${index+1}) المستشفي الشروق العام ',
        "image": 'assets/images/hospital.png',
        "content": "Address: الحي الاول مجاورة 7 مدينة الشروق"
            "\nPhone Number : 012251514482",
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Find Hospital',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xff374c55),
            fontSize: 25,
          ),
        ),
        backgroundColor: Color(0xff97c6d8),
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
                child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (_, index) {
                      final item = items[index];
                      return Card(
                        key: PageStorageKey(item['id']),
                        color: Color(0xff97c6d8),
                        elevation: 4,
                        child: ExpansionTile(
                            iconColor: Color(0xff374c55),
                            collapsedIconColor: Color(0xff374c55),
                            childrenPadding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 20,
                            ),
                            expandedCrossAxisAlignment: CrossAxisAlignment.end,
                            title: Text(
                              item['title'],
                              style: const TextStyle(
                                fontSize: 15,
                                color: Color(0xff374c55),
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.visible,
                            ),
                            children: [
                              Column(
                                children: [
                                  Text(
                                    item['content'],
                                    style: const TextStyle(
                                      color: Color(0xff374c55),
                                    ),
                                    maxLines: 10,
                                  ),
                                  Image.asset(
                                    'assets/images/hospital.png',
                                    width: 200,
                                    height: 200,
                                  ),
                                ],
                              ),
                            ]),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
