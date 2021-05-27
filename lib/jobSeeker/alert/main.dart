import 'dart:convert';

import 'package:PaySit/jobSeeker/alert/List.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Alert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                Stack(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 15, bottom: 20),
                      child: Icon(MaterialCommunityIcons.bell_outline,
                          size: 30, color: Colors.grey),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 25,
                      ),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 0, 0, 0.7),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            '115',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Montserrat",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ])),
        ),
      ),
      Expanded(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 500,
                child: FutureBuilder(
                  future: DefaultAssetBundle.of(context)
                      .loadString('assets/Json/alertList.json'),
                  builder: (context, snapshot) {
                    var alert_data = json.decode(snapshot.data.toString());
                    return ListView.builder(
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return AlertList(
                            alert_data: alert_data,
                            index: index,
                          );
                        },
                        itemCount: alert_data == null ? 0 : alert_data.length);
                  },
                ),
              ),
            ),
          ],
        ),
      )
    ])));
  }
}
