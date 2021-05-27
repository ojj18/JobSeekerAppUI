import 'dart:convert';

import 'package:PaySit/jobSeeker/alert/main.dart';
import 'package:PaySit/jobSeeker/jobs/main.dart';
import 'package:PaySit/jobSeeker/message/main.dart';
import 'package:PaySit/jobSeeker/resume/main.dart';
import 'package:PaySit/public/homePage/browse.dart';
import 'package:flutter/material.dart';

class Jobseekerhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              elevation: 10,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 160,
                  // minHeight: 0.1,
                ),
                child: Container(
                    // height: MediaQuery.of(context).size.height / 3.5,
                    child: Column(children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 50),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://images.pexels.com/photos/324658/pexels-photo-324658.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 50, left: 10),
                            child: Text(
                              'Cindrella',
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 15,
                                  color: Color.fromRGBO(0, 0, 0, 0.7),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'ReactNative,Php,Js,Los Angeles',
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ])),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Card(
                            elevation: 10,
                            child: InkWell(
                              child: Container(
                                height: 100,
                                width: 150,
                                child: Column(children: [
                                  Container(
                                    height: 80,
                                    width: 150,
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/seekerjobs.png'),
                                    ),
                                  ),
                                  Text(
                                    "Jobs",
                                    style: TextStyle(
                                      fontFamily: "Montserrat",
                                      color: Colors.grey[700],
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ]),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Job2()));
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          flex: 1,
                          child: Card(
                            elevation: 10,
                            child: InkWell(
                              child: Container(
                                height: 100,
                                width: 150,
                                child: Column(children: [
                                  Container(
                                    height: 80,
                                    width: 150,
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/resume.png'),
                                    ),
                                  ),
                                  Text(
                                    "Resume",
                                    style: TextStyle(
                                      fontFamily: "Montserrat",
                                      color: Colors.grey[700],
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ]),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Resume()));
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Card(
                            elevation: 10,
                            child: InkWell(
                              child: Container(
                                height: 100,
                                width: 150,
                                child: Column(children: [
                                  Container(
                                    height: 80,
                                    width: 150,
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/alerts.png'),
                                    ),
                                  ),
                                  Text(
                                    "JobAlert",
                                    style: TextStyle(
                                      fontFamily: "Montserrat",
                                      color: Colors.grey[700],
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ]),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Alert()));
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          flex: 1,
                          child: Card(
                            elevation: 10,
                            child: InkWell(
                              child: Container(
                                height: 100,
                                width: 150,
                                child: Column(children: [
                                  Container(
                                    height: 80,
                                    width: 150,
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/seekmessage.png'),
                                    ),
                                  ),
                                  Text(
                                    "Message",
                                    style: TextStyle(
                                      fontFamily: "Montserrat",
                                      color: Colors.grey[700],
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ]),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Message1()));
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 20),
                    child: Text(
                      "RECOMMENDED",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 14,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
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
                  Padding(
                    padding: EdgeInsets.only(
                      top: 15,
                    ),
                    child: Container(
                      height: 230,
                      child: FutureBuilder(
                          future: DefaultAssetBundle.of(context)
                              .loadString("assets/Json/browse.json"),
                          builder: (context, snapshot) {
                            var browse_data =
                                json.decode(snapshot.data.toString());
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Browse(
                                  browse_data: browse_data,
                                  index: index,
                                );
                              },
                              itemCount:
                                  browse_data == null ? 0 : browse_data.length,
                            );
                          }),
                    ),
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
