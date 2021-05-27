import 'dart:convert';

import 'package:PaySit/employer/employerHome/main.dart';
import 'package:PaySit/employer/setting/List.dart';
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
            fontSize: 15,
            fontFamily: "Montserrat",
            color: Colors.black,
          ),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 20,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EmployerHome()));
            }),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, top: 30),
            child: Text(
              'NOTIFICATION',
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.grey[400],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15,
            ),
            child: Text(
              'JOBS',
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(0, 0, 0, 0.7)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 20,
            ),
            child: Container(
              height: 500,
              child: FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('assets/Json/setting.json'),
                builder: (context, snapshot) {
                  var setting_data = json.decode(snapshot.data.toString());
                  return ListView.builder(
                      physics: ClampingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return SettingList(
                          setting_data: setting_data,
                          index: index,
                        );
                      },
                      itemCount:
                          setting_data == null ? 0 : setting_data.length);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
