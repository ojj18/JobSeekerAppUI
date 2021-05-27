import 'dart:convert';

import 'package:PaySit/employer/employerHome/main.dart';
import 'package:PaySit/employer/employerHome/widget/Footer.dart';
import 'package:PaySit/employer/member/List.dart';
import 'package:PaySit/public/Profile/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Candidate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Our Member',
          style: TextStyle(
            fontWeight: FontWeight.w600,
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
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 720,
                    child: FutureBuilder(
                        future: DefaultAssetBundle.of(context)
                            .loadString('assets/Json/candidate.json'),
                        builder: (context, snapshot) {
                          var candidate_data =
                              json.decode(snapshot.data.toString());
                          return ListView.builder(
                            physics: ClampingScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return CandidateList(
                                candidate_data: candidate_data,
                                index: index,
                              );
                            },
                            itemCount: candidate_data == null
                                ? 0
                                : candidate_data.length,
                          );
                        }),
                  )
                ],
              ),
            ),
            Footer1()
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, 0.7),
          borderRadius: BorderRadius.circular(60),
        ),
        child: FloatingActionButton(
          backgroundColor: Color.fromRGBO(0, 0, 0, 0.7),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Profile()));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesome.user,
                color: Colors.white,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Profile",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
