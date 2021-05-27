import 'package:PaySit/employer/aboutUs/main.dart';
import 'package:PaySit/employer/contactUs/main.dart';
import 'package:PaySit/employer/employerHome/main.dart';
import 'package:PaySit/employer/jobDetails/main.dart';

import 'package:PaySit/jobSeeker/jobs/main.dart';
import 'package:PaySit/jobSeeker/jobseekerHome/main.dart';
import 'package:PaySit/jobSeeker/resume/main.dart';
import 'package:PaySit/public/Profile/main.dart';
import 'package:PaySit/public/aboutUs/main.dart';
import 'package:PaySit/public/changePasswd/main.dart';
import 'package:PaySit/public/contactAs/main.dart';
import 'package:PaySit/public/jobDetails/main.dart';
import 'package:PaySit/public/jobs/main.dart';
import 'package:PaySit/public/signIn/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Drawer1 extends StatefulWidget {
  @override
  _Drawer1State createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width / 1.2,
        color: Colors.white,
        child: Scrollbar(
          thickness: 4,
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 1,
                    // decoration: BoxDecoration(
                    //   image: DecorationImage(
                    //       image: AssetImage(
                    //         'assets/images/Drawerimage.jpg',
                    //       ),
                    //       fit: BoxFit.cover),
                    // ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 50),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
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
                                  'Web Designer,Los Angeles',
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 12,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: ListTile(
                      leading: Icon(
                        FontAwesome.home,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "Home",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: ListTile(
                      leading: Icon(
                        FontAwesome.globe,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "Jobs",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Job()));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: ListTile(
                      leading: Icon(
                        FontAwesome.building_o,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "Job Detail",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => JobDetails()));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: ListTile(
                      leading: Icon(
                        FontAwesome.handshake_o,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "Our Partners",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: ListTile(
                      leading: Icon(
                        FontAwesome.group,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "SignIn",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: ListTile(
                      leading: Icon(
                        FontAwesome.user_circle_o,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "Profile",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Profile()));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: ListTile(
                      leading: Icon(
                        FontAwesome.lock,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "ChangePswd",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChangePasswd()));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: ListTile(
                      leading: Icon(
                        FontAwesome.info_circle,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "About Us",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AboutUs()));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: ListTile(
                      leading: Icon(
                        FontAwesome.envelope,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "Contact",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ContactUs()));
                      },
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: ListTile(
                      leading: Icon(
                        FontAwesome.home,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "EmployerHome",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EmployerHome()));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: ListTile(
                      leading: Icon(
                        FontAwesome.globe,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "Jobs",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => JobDetail1()));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: ListTile(
                      leading: Icon(
                        FontAwesome.info_circle,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "About Us",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => About()));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: ListTile(
                      leading: Icon(
                        FontAwesome.envelope,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "ContactUs",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Contact()));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: ListTile(
                      leading: Icon(
                        MaterialIcons.message,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "Scheme",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ContactUs()));
                      },
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: ListTile(
                      leading: Icon(
                        FontAwesome.home,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "JobSeekerHome",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Jobseekerhome()));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: ListTile(
                      leading: Icon(
                        FontAwesome.globe,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "Jobs",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Job2()));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: ListTile(
                      leading: Icon(
                        FontAwesome.user_circle_o,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "Resume",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Resume()));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: ListTile(
                      leading: Icon(
                        FontAwesome.bell,
                        color: Colors.black,
                        size: 25,
                      ),
                      title: Text(
                        "Alert",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Resume()));
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
