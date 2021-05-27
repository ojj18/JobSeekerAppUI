import 'package:PaySit/employer/employerHome/main.dart';
import 'package:PaySit/employer/jobs/List.dart';

import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter_icons/flutter_icons.dart';

class Job1 extends StatelessWidget {
  Job1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Jobs',
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
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 1280,
                    child: FutureBuilder(
                        future: DefaultAssetBundle.of(context)
                            .loadString('assets/Json/jobs.json'),
                        builder: (context, snapshot) {
                          var job1_data = json.decode(snapshot.data.toString());
                          return ListView.builder(
                            physics: ClampingScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return JobList1(
                                job1_data: job1_data,
                                index: index,
                              );
                            },
                            itemCount: job1_data == null ? 0 : job1_data.length,
                          );
                        }),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                width: 1.5,
                color: Colors.grey[300],
              )),
              height: 50,
              width: MediaQuery.of(context).size.width / 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          Icon(
                            MaterialCommunityIcons.filter,
                            color: Colors.grey,
                          ),
                          Text(
                            'FilterBy',
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                  VerticalDivider(
                    color: Colors.grey[300],
                    thickness: 1.5,
                  ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Row(
                        children: [
                          Icon(
                            MaterialIcons.sort_by_alpha,
                            color: Colors.grey,
                          ),
                          Text(
                            'SortBy',
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
