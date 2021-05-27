import 'dart:convert';

import 'package:PaySit/employer/employerHome/widget/Footer.dart';
import 'package:PaySit/public/Profile/main.dart';
import 'package:PaySit/public/blog/List.dart';
import 'package:PaySit/public/homePage/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Blog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Blog',
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
                    height: 1140,
                    child: FutureBuilder(
                        future: DefaultAssetBundle.of(context)
                            .loadString('assets/Json/blog.json'),
                        builder: (context, snapshot) {
                          var blog_data = json.decode(snapshot.data.toString());
                          return ListView.builder(
                            physics: ClampingScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return BlogList(
                                blog_data: blog_data,
                                index: index,
                              );
                            },
                            itemCount: blog_data == null ? 0 : blog_data.length,
                          );
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                    ),
                    child: Text(
                      'COMMENTS',
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(0, 0, 0, 0.7)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Card(
                      elevation: 10,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: 0.3,
                        ),
                        child: Container(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: CircleAvatar(
                                      radius: 35,
                                      backgroundImage: NetworkImage(
                                          "https://images.pexels.com/photos/842567/pexels-photo-842567.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "John Doe",
                                          style: TextStyle(
                                              fontFamily: "Montserrat",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.7)),
                                        ),
                                        SizedBox(
                                          height: 5.5,
                                        ),
                                        Text(
                                          'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.Maecenas sodales fermentum\njusto.',
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontFamily: 'Montserrat',
                                              fontSize: 10),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Entypo.reply,
                                              color: Colors.grey,
                                              size: 16,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              'Reply',
                                              style: TextStyle(
                                                  color: Colors.grey[600],
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 10),
                                            ),
                                            SizedBox(
                                              width: 80,
                                            ),
                                            Icon(
                                              MaterialIcons.timer,
                                              color: Colors.grey,
                                              size: 16,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              '3 minutes ago',
                                              style: TextStyle(
                                                  color: Colors.grey[600],
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 80, right: 20),
                                child: Divider(
                                  color: Colors.grey[400],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: CircleAvatar(
                                      radius: 35,
                                      backgroundImage: NetworkImage(
                                          "https://images.pexels.com/photos/842567/pexels-photo-842567.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "John Doe",
                                          style: TextStyle(
                                              fontFamily: "Montserrat",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.7)),
                                        ),
                                        SizedBox(
                                          height: 5.5,
                                        ),
                                        Text(
                                          'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.',
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontFamily: 'Montserrat',
                                              fontSize: 10),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 25),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Entypo.reply,
                                                color: Colors.grey,
                                                size: 16,
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Text(
                                                'Reply',
                                                style: TextStyle(
                                                    color: Colors.grey[600],
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 10),
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Icon(
                                                MaterialIcons.timer,
                                                color: Colors.grey,
                                                size: 16,
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Text(
                                                '3 minutes ago',
                                                style: TextStyle(
                                                    color: Colors.grey[600],
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 10),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Footer1()
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
