import 'package:PaySit/employer/jobs/main.dart';
import 'package:PaySit/employer/package/main.dart';

import 'package:PaySit/employer/setting/main.dart';

import 'package:PaySit/public/homePage/main.dart';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Footer1 extends StatelessWidget {
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
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 10,
                          color: Color.fromRGBO(0, 0, 0, 1),
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
                  width: 20,
                ),
                InkWell(
                  child: Column(
                    children: [
                      Icon(
                        FontAwesome.dollar,
                        color: Colors.grey[600],
                      ),
                      Text(
                        'Packages',
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 10,
                          color: Colors.grey[600],
                        ),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Package()));
                  },
                ),
                SizedBox(
                  width: 90,
                ),
                InkWell(
                  child: Column(
                    children: [
                      Icon(
                        Ionicons.ios_globe,
                        color: Colors.grey[600],
                      ),
                      Text(
                        'Job',
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 10,
                          color: Colors.grey[600],
                        ),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Job1()));
                  },
                ),
                SizedBox(
                  width: 40,
                ),
                InkWell(
                  child: Column(
                    children: [
                      Icon(
                        MaterialCommunityIcons.settings,
                        color: Colors.grey[600],
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 10,
                          color: Colors.grey[600],
                        ),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Setting()));
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
