import 'dart:convert';

import 'package:PaySit/employer/employerHome/member.dart';
import 'package:PaySit/employer/employerHome/widget/Footer.dart';
import 'package:PaySit/employer/jobs/main.dart';

import 'package:PaySit/employer/member/main.dart';
import 'package:PaySit/employer/message/main.dart';
import 'package:PaySit/employer/orderHistory/main.dart';
import 'package:PaySit/employer/package/main.dart';
import 'package:PaySit/employer/setting/main.dart';
import 'package:PaySit/public/Profile/main.dart';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class EmployerHome extends StatefulWidget {
  @override
  _EmployerHomeState createState() => _EmployerHomeState();
}

class _EmployerHomeState extends State<EmployerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Employer',
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
          builder: (context) => Icon(
            Entypo.menu,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height / 1.1,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      elevation: 10,
                      child: Container(
                        height: 110,
                        child: Row(
                          children: [
                            Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://sites.google.com/site/mulchandsen/_/rsrc/1280217388336/management-stories/wiprologoitsmeaning/WNC_Logo_HR.jpg?height=1522&width=1186'),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      FontAwesome.star,
                                      color: Color.fromRGBO(253, 214, 1, 1),
                                      size: 17,
                                    ),
                                    Icon(
                                      FontAwesome.star,
                                      color: Color.fromRGBO(253, 214, 1, 1),
                                      size: 17,
                                    ),
                                    Icon(
                                      FontAwesome.star,
                                      color: Color.fromRGBO(253, 214, 1, 1),
                                      size: 17,
                                    ),
                                    Icon(
                                      FontAwesome.star,
                                      color: Color.fromRGBO(253, 214, 1, 1),
                                      size: 17,
                                    ),
                                    Icon(
                                      FontAwesome.star_half_full,
                                      color: Color.fromRGBO(253, 214, 1, 1),
                                      size: 17,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "3.8",
                                          style: TextStyle(
                                              fontFamily: "Montserrat",
                                              color: Colors.white,
                                              fontSize: 11),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "of 5.5K Reviews",
                                      style: TextStyle(
                                          fontFamily: "Montserrat",
                                          color: Colors.grey,
                                          fontSize: 10.5),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Ionicons.ios_globe,
                                          color: Colors.grey[600],
                                          size: 19,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "wipro.com",
                                          style: TextStyle(
                                              fontFamily: "Montserrat",
                                              color: Colors.grey[600],
                                              fontSize: 10.5),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          MaterialCommunityIcons.calendar,
                                          color: Colors.grey[600],
                                          size: 19,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "74 Years Old",
                                          style: TextStyle(
                                              fontFamily: "Montserrat",
                                              color: Colors.grey[600],
                                              fontSize: 10.5),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          MaterialIcons.people,
                                          color: Colors.grey[600],
                                          size: 19,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "10000+",
                                          style: TextStyle(
                                              fontFamily: "Montserrat",
                                              color: Colors.grey[600],
                                              fontSize: 10.5),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          MaterialIcons.place,
                                          color: Colors.grey[600],
                                          size: 18,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "London,England",
                                          style: TextStyle(
                                              fontFamily: "Montserrat",
                                              color: Colors.grey[600],
                                              fontSize: 10.5),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Card(
                              elevation: 10,
                              child: InkWell(
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 100,
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/listing.png'),
                                        ),
                                      ),
                                      Text(
                                        "Job Listing",
                                        style: TextStyle(
                                          fontFamily: "Montserrat",
                                          color: Colors.grey[700],
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Job1()));
                                },
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Card(
                              elevation: 10,
                              child: InkWell(
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  child: Column(children: [
                                    Container(
                                      height: 80,
                                      width: 100,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/member.png'),
                                      ),
                                    ),
                                    Text(
                                      "Candidate",
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
                                          builder: (context) => Candidate()));
                                },
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Card(
                              elevation: 10,
                              child: InkWell(
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 100,
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/package.png'),
                                        ),
                                      ),
                                      Text(
                                        "Package",
                                        style: TextStyle(
                                          fontFamily: "Montserrat",
                                          color: Colors.grey[700],
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Package()));
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Card(
                              elevation: 10,
                              child: InkWell(
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  child: Column(children: [
                                    Container(
                                      height: 80,
                                      width: 100,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/settings.png'),
                                      ),
                                    ),
                                    Text(
                                      "Settings",
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
                                          builder: (context) => Setting()));
                                },
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Card(
                              elevation: 10,
                              child: InkWell(
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 100,
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/order.png'),
                                        ),
                                      ),
                                      Text(
                                        "Order History",
                                        style: TextStyle(
                                          fontFamily: "Montserrat",
                                          color: Colors.grey[700],
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Orderhistory()));
                                },
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Card(
                              elevation: 10,
                              child: InkWell(
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 100,
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/message.png'),
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
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Message()));
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "OUR",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              color: Colors.grey[350],
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "CANDIDATES",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              color: Colors.grey[700],
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 15),
                    child: Container(
                      height: 120,
                      child: FutureBuilder(
                          future: DefaultAssetBundle.of(context)
                              .loadString('assets/Json/member.json'),
                          builder: (context, snapshot) {
                            var member_data =
                                json.decode(snapshot.data.toString());
                            return Scrollbar(
                              child: ListView.builder(
                                physics: ClampingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return Member(
                                    member_data: member_data,
                                    index: index,
                                  );
                                },
                                itemCount: member_data == null
                                    ? 0
                                    : member_data.length,
                              ),
                            );
                          }),
                    ),
                  )
                ],
              ),
            ),
          ),
          Footer1()
        ],
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
