import 'package:PaySit/public/homePage/main.dart';
import 'package:PaySit/public/jobs/List.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter_icons/flutter_icons.dart';

class Job extends StatelessWidget {
  Job({
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
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
                    height: 1200,
                    child: FutureBuilder(
                        future: DefaultAssetBundle.of(context)
                            .loadString('assets/Json/jobs.json'),
                        builder: (context, snapshot) {
                          var job_data = json.decode(snapshot.data.toString());
                          return ListView.builder(
                            physics: ClampingScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return JobList(
                                job_data: job_data,
                                index: index,
                              );
                            },
                            itemCount: job_data == null ? 0 : job_data.length,
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'SIMILAR',
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 14,
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5),
                    child: Text(
                      'JOBS',
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 14,
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    height: 720,
                    child: FutureBuilder(
                        future: DefaultAssetBundle.of(context)
                            .loadString('assets/Json/latest.json'),
                        builder: (context, snapshot) {
                          var latest_data =
                              json.decode(snapshot.data.toString());
                          return ListView.builder(
                            physics: ClampingScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return Similar(
                                latest_data: latest_data,
                                index: index,
                              );
                            },
                            itemCount:
                                latest_data == null ? 0 : latest_data.length,
                          );
                        }),
                  )
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
