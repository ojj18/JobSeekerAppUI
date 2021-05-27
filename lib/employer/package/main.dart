import 'dart:convert';

import 'package:PaySit/employer/employerHome/main.dart';
import 'package:PaySit/employer/package/List.dart';

import 'package:flutter/material.dart';

class Package extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Scheme',
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
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: 720, maxHeight: 730),
            child: Container(
              child: FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('assets/Json/scheme.json'),
                builder: (context, snapshot) {
                  var package_data = json.decode(snapshot.data.toString());
                  return ListView.builder(
                      physics: ClampingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return PackageList(
                          package_data: package_data,
                          index: index,
                        );
                      },
                      itemCount:
                          package_data == null ? 0 : package_data.length);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
