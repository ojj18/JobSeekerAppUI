import 'package:PaySit/public/blog/main.dart';
import 'package:PaySit/public/homePage/main.dart';
import 'package:PaySit/public/jobs/main.dart';
import 'package:PaySit/public/postJob/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 60,
          width: MediaQuery.of(context).size.width / 1,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Column(
                    children: [
                      Icon(
                        FontAwesome.home,
                        color: Color.fromRGBO(48, 80, 230, 1),
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 10,
                          color: Color.fromRGBO(48, 80, 230, 1),
                        ),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
                SizedBox(
                  width: 50,
                ),
                InkWell(
                  child: Column(
                    children: [
                      Icon(
                        Ionicons.ios_globe,
                        color: Color.fromRGBO(124, 184, 50, 1),
                      ),
                      Text(
                        'Jobs',
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 10,
                          color: Color.fromRGBO(124, 184, 50, 1),
                        ),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Job()));
                  },
                ),
                SizedBox(
                  width: 105,
                ),
                InkWell(
                  child: Column(
                    children: [
                      Icon(
                        MaterialCommunityIcons.contact_mail,
                        color: Color.fromRGBO(245, 117, 32, 1),
                      ),
                      Text(
                        'Post Job',
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 10,
                          color: Color.fromRGBO(245, 117, 32, 1),
                        ),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Postjob()));
                  },
                ),
                SizedBox(
                  width: 40,
                ),
                InkWell(
                  child: Column(
                    children: [
                      Icon(
                        Entypo.newsletter,
                        color: Color.fromRGBO(240, 78, 138, 1),
                      ),
                      Text(
                        'Blog',
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 10,
                          color: Color.fromRGBO(240, 78, 138, 1),
                        ),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Blog()));
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
