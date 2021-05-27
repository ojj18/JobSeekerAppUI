import 'dart:convert';
import 'package:PaySit/employer/message/List.dart';
import 'package:PaySit/jobSeeker/jobseekerHome/main.dart';
import 'package:flutter/material.dart';

class Message1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Message',
          style: TextStyle(
            fontWeight: FontWeight.w600,
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Jobseekerhome()));
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
                    height: 600,
                    child: FutureBuilder(
                        future: DefaultAssetBundle.of(context)
                            .loadString('assets/Json/message.json'),
                        builder: (context, snapshot) {
                          var message_data =
                              json.decode(snapshot.data.toString());
                          return ListView.builder(
                            physics: ClampingScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return MessageList(
                                message_data: message_data,
                                index: index,
                              );
                            },
                            itemCount:
                                message_data == null ? 0 : message_data.length,
                          );
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
