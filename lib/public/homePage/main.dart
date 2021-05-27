import 'dart:convert';

import 'package:PaySit/public/Profile/List.dart';
import 'package:PaySit/public/Profile/main.dart';
import 'package:PaySit/public/homePage/Latest.dart';
import 'package:PaySit/public/homePage/browse.dart';
import 'package:PaySit/public/homePage/employer.dart';
import 'package:PaySit/public/homePage/latestBlog.dart';
import 'package:PaySit/public/homePage/widget/Footer.dart';
import 'package:PaySit/public/homePage/widget/drawer.dart';

import 'package:flutter/material.dart';

import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'PaySit',
          style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Entypo.menu,
              color: Colors.black,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: ListView(
                padding: EdgeInsets.only(bottom: 10),
                children: [
                  Expanded(
                    flex: 1,
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width * 1,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2018/05/01/11/40/man-3365368_960_720.jpg'),
                                fit: BoxFit.cover),
                          ),
                          child: FlatButton(
                            onPressed: () {},
                            child: null,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 225),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 10),
                              child: Row(
                                children: [
                                  Flexible(
                                    child: TextFormField(
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.black,
                                          fontSize: 14),
                                      decoration: InputDecoration(
                                          hintText:
                                              'ie.Php,WebDesigner,JavaScript',
                                          hintStyle: TextStyle(
                                              fontFamily: 'Montserrat',
                                              color: Colors.grey[300],
                                              fontSize: 14),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      MaterialIcons.search,
                                      color: Colors.grey[600],
                                    ),
                                    onPressed: () {},
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: Text(
                      "JOB",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 14,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'CATEGORIES',
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
                      left: 15,
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
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: Text(
                      "FEATURED",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 14,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
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
                      left: 15,
                      top: 15,
                    ),
                    child: Container(
                      height: 180,
                      child: FutureBuilder(
                          future: DefaultAssetBundle.of(context)
                              .loadString("assets/Json/features.json"),
                          builder: (context, snapshot) {
                            var feature_data =
                                json.decode(snapshot.data.toString());
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Features(
                                  feature_data: feature_data,
                                  index: index,
                                );
                              },
                              itemCount: feature_data == null
                                  ? 0
                                  : feature_data.length,
                            );
                          }),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: Text(
                      "SIMILAR",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 14,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
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
                      height: 700,
                      child: FutureBuilder(
                          future: DefaultAssetBundle.of(context)
                              .loadString("assets/Json/latest.json"),
                          builder: (context, snapshot) {
                            var latest_data =
                                json.decode(snapshot.data.toString());
                            return ListView.builder(
                              physics: ClampingScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context, int index) {
                                return Latest(
                                  latest_data: latest_data,
                                  index: index,
                                );
                              },
                              itemCount:
                                  latest_data == null ? 0 : latest_data.length,
                            );
                          }),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: Text(
                      "TOP",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 14,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'EMPLOYERS',
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
                      left: 10,
                    ),
                    child: Container(
                      height: 155,
                      child: FutureBuilder(
                          future: DefaultAssetBundle.of(context)
                              .loadString("assets/Json/employee.json"),
                          builder: (context, snapshot) {
                            var employee_data =
                                json.decode(snapshot.data.toString());
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Employees(
                                  employee_data: employee_data,
                                  index: index,
                                );
                              },
                              itemCount: employee_data == null
                                  ? 0
                                  : employee_data.length,
                            );
                          }),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: Text(
                      "LATEST",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 14,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'BLOG',
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
                      left: 10,
                    ),
                    child: Container(
                      height: 270,
                      child: FutureBuilder(
                          future: DefaultAssetBundle.of(context)
                              .loadString("assets/Json/latestBlog.json"),
                          builder: (context, snapshot) {
                            var latestblog_data =
                                json.decode(snapshot.data.toString());
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return LatestBlog(
                                  latestblog_data: latestblog_data,
                                  index: index,
                                );
                              },
                              itemCount: latestblog_data == null
                                  ? 0
                                  : latestblog_data.length,
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Footer()
        ],
      ),
      drawer: Drawer1(),
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
