import 'dart:convert';

import 'package:PaySit/public/Profile/List.dart';
import 'package:PaySit/public/homePage/widget/Footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _value = 0;

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
                  maxHeight: 200,
                  // minHeight: 0.1,
                ),
                child: Container(
                  // height: MediaQuery.of(context).size.height / 3.5,
                  child: Column(
                    children: [
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
                                  'Web Designer,Los Angeles',
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
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Color.fromRGBO(0, 0, 0, 0.7),
                          inactiveTrackColor: Colors.grey[300],
                          trackShape: RectangularSliderTrackShape(),
                          trackHeight: 2.0,
                          thumbColor: Color.fromRGBO(0, 0, 0, 0.7),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 7.0),
                          overlayColor: Color.fromRGBO(0, 0, 0, 0.7),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 20.0),
                        ),
                        child: Slider(
                          min: 0,
                          max: 100,
                          value: _value.toDouble(),
                          onChanged: (double value) {
                            setState(() {
                              _value = value.round();
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Profile Completeness',
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              _value.toString(),
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'RECOMMENDED',
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 13,
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'JOBS',
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 15,
                            color: Color.fromRGBO(0, 0, 0, 0.7),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 20),
                    child: Container(
                      height: 180,
                      child: FutureBuilder(
                          future: DefaultAssetBundle.of(context)
                              .loadString('assets/Json/features.json'),
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
                    padding: EdgeInsets.only(
                      left: 10,
                      top: 90,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 65,
                          width: 140,
                          child: Card(
                            elevation: 10,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(
                                    FontAwesome.bookmark_o,
                                    color: Colors.grey[600],
                                    size: 17,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "49 Jobs",
                                      style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey[600]),
                                    ),
                                    Text(
                                      "Saved Jobs",
                                      style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          color: Colors.grey[600]),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 65,
                          width: 140,
                          child: Card(
                            elevation: 10,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(
                                    MaterialIcons.check,
                                    color: Colors.grey[600],
                                    size: 17,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "24 Jobs",
                                      style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey[600]),
                                    ),
                                    Text(
                                      "Saved Jobs",
                                      style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          color: Colors.grey[600]),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Footer()
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
                    fontSize: 13,
                    color: Colors.white,
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
