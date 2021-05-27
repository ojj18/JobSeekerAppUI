import 'dart:convert';

import 'package:PaySit/public/jobDetails/List.dart';
import 'package:PaySit/public/jobs/main.dart';
import 'package:PaySit/public/postJob/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class JobDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JobDetail',
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
                  context, MaterialPageRoute(builder: (context) => Job()));
            }),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                        height: 90,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[400],
                            width: 0,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Graphics Designer",
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 13,
                                    color: Color.fromRGBO(0, 0, 0, 0.7),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "DataPosted: Feb 19,2019",
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Salary:4000USD-5000USD",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 11,
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Image(
                                image: NetworkImage(
                                    'https://www.noticebard.com/wp-content/uploads/2017/11/revised-google-logo.gif'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[400],
                            width: 0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                Icon(
                                  FontAwesome.bookmark_o,
                                  color: Colors.grey[400],
                                  size: 16,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, bottom: 5),
                                  child: Text(
                                    'Full time',
                                    style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 10,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                              ]),
                              Row(children: [
                                Icon(
                                  MaterialIcons.place,
                                  color: Colors.grey[400],
                                  size: 16,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, bottom: 5),
                                  child: Text(
                                    'US,Australia',
                                    style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 10,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                              ]),
                              Row(children: [
                                Icon(
                                  FontAwesome.plus_square_o,
                                  color: Colors.grey[400],
                                  size: 16,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, bottom: 5),
                                  child: Text(
                                    '3yes Experience',
                                    style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 10,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                              ]),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20.0),
                        height: 60,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Job Description',
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 14,
                                color: Color.fromRGBO(0, 0, 0, 0.7),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height / 0.0,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[400],
                              width: 0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 10),
                                  child: Text(
                                    "Graphics Designer Should have hands on\nexperience on graphic designing (including\nLogos, Websites,etc).Should be able to\nconceptualize creative theme/concepts as per\nclient requirement.Must have the ability to read\nand understand brand guidelines and translate\ninto actionable designs Should have good sense\nof Composition, Typography & Color theory for\ncreating elegant and creative visuals for print\nHave the ability to manage multiple projects\nwhile keeping a keen attention to details Working\non layouts for web pages;",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[600],
                                      fontFamily: "Montserrat",
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Divider(
                                    height: 30,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: Text(
                                    "Skills Required",
                                    style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(0, 0, 0, 0.7)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, left: 20, right: 20),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 100,
                                        color: Colors.grey[300],
                                        child: Center(
                                          child: Text(
                                            'React Native',
                                            style: TextStyle(
                                                fontFamily: "Montserrat",
                                                fontSize: 13,
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 0.7),
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 25,
                                        width: 40,
                                        color: Colors.grey[300],
                                        child: Center(
                                          child: Text(
                                            'Html',
                                            style: TextStyle(
                                                fontFamily: "Montserrat",
                                                fontSize: 13,
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 0.7),
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 25,
                                        width: 35,
                                        color: Colors.grey[300],
                                        child: Center(
                                          child: Text(
                                            'CSS',
                                            style: TextStyle(
                                                fontFamily: "Montserrat",
                                                fontSize: 13,
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 0.7),
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 25,
                                        width: 50,
                                        color: Colors.grey[300],
                                        child: Center(
                                          child: Text(
                                            'XCode',
                                            style: TextStyle(
                                                fontFamily: "Montserrat",
                                                fontSize: 13,
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 0.7),
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 10),
                                  child: FlatButton(
                                    height: 40,
                                    minWidth:
                                        MediaQuery.of(context).size.height /
                                            1.1,
                                    color: Color.fromRGBO(0, 0, 0, 0.7),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Postjob()));
                                    },
                                    child: Text(
                                      'Apply Now',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 13,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TOP',
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 14,
                      color: Colors.grey[400],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'EMPLOYERS',
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 14,
                      color: Color.fromRGBO(0, 0, 0, 0.7),
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              child: Container(
                height: 150,
                child: FutureBuilder(
                    future: DefaultAssetBundle.of(context)
                        .loadString('assets/Json/employee.json'),
                    builder: (context, snapshot) {
                      var employee_data = json.decode(snapshot.data.toString());
                      return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Employees(
                              employee_data: employee_data,
                              index: index,
                            );
                          },
                          itemCount:
                              employee_data == null ? 0 : employee_data.length);
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
