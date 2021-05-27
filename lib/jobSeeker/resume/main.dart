import 'package:PaySit/jobSeeker/resume/dropbox1.dart';
import 'package:PaySit/jobSeeker/resume/dropbox2.dart';
import 'package:PaySit/jobSeeker/resume/dropbox3.dart';
import 'package:PaySit/public/jobDetails/main.dart';
import 'package:PaySit/public/verify/main.dart';
import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Resume',
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => JobDetails()));
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
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "PERSONAL",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 14,
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'DETAILS',
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 14,
                            color: Color.fromRGBO(0, 0, 0, 0.7),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Container(
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 15, bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Color.fromRGBO(0, 0, 0, 0.7),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey[300],
                                  ),
                                ),
                                height: 40,
                                child: TextField(
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 12,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                      hintText: "Cindrella",
                                      hintStyle: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Email ID',
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Color.fromRGBO(0, 0, 0, 0.7),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey[300],
                                  ),
                                ),
                                height: 40,
                                child: TextField(
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 12,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                      hintText: "cind@gmail.com",
                                      hintStyle: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Password',
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Color.fromRGBO(0, 0, 0, 0.7),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey[300],
                                  ),
                                ),
                                height: 40,
                                child: TextField(
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 12,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                      hintText: "********",
                                      hintStyle: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Mobile Number',
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Color.fromRGBO(0, 0, 0, 0.7),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey[300],
                                  ),
                                ),
                                height: 40,
                                child: TextField(
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 12,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                      hintText: "+91 ----------",
                                      hintStyle: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Location',
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Color.fromRGBO(0, 0, 0, 0.7),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey[300],
                                  ),
                                ),
                                height: 40,
                                child: TextField(
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 12,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                      hintText: "Chennai",
                                      hintStyle: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Current Experience',
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Color.fromRGBO(0, 0, 0, 0.7),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey[300],
                                  ),
                                ),
                                height: 40,
                                child: TextField(
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 12,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                      hintText: "2 years",
                                      hintStyle: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Expected Salary',
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Color.fromRGBO(0, 0, 0, 0.7),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey[300],
                                  ),
                                ),
                                height: 40,
                                child: TextField(
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 12,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                      hintText: "\$2000",
                                      hintStyle: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Description',
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Color.fromRGBO(0, 0, 0, 0.7),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey[300],
                                  ),
                                ),
                                height: 80,
                                child: TextField(
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 12,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                      hintText: "",
                                      hintStyle: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Post your Resume',
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Color.fromRGBO(0, 0, 0, 0.7),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    left: 10, top: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey[300],
                                  ),
                                ),
                                height: 80,
                                child: TextField(
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 12,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                      hintText: "Attach your resume",
                                      hintStyle: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "FIRM",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 14,
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'DETAILS',
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 14,
                            color: Color.fromRGBO(0, 0, 0, 0.7),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 15, bottom: 15),
                    child: Container(
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 15, bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Highest Qualification',
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Color.fromRGBO(0, 0, 0, 0.7),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Stack(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 10, bottom: 10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.grey[300],
                                      ),
                                    ),
                                    height: 40,
                                    width:
                                        MediaQuery.of(context).size.width / 1.1,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Dropdown1(),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Course Details',
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Color.fromRGBO(0, 0, 0, 0.7),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Stack(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 10, bottom: 10, top: 15),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.grey[300],
                                      ),
                                    ),
                                    height: 40,
                                    width:
                                        MediaQuery.of(context).size.width / 1.1,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Dropdown2(),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Salary',
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Color.fromRGBO(0, 0, 0, 0.7),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Stack(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 10, bottom: 10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.grey[300],
                                      ),
                                    ),
                                    height: 40,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Dropdown3(),
                                  )
                                ],
                              ),
                              Text(
                                'Skills',
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Color.fromRGBO(0, 0, 0, 0.7),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey[300],
                                  ),
                                ),
                                height: 40,
                                child: TextField(
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 12,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                      hintText: "Php Developer,Web Designer ..",
                                      hintStyle: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 15, bottom: 15),
                    child: Container(
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 15, bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Firm Name',
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Color.fromRGBO(0, 0, 0, 0.7),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey[300],
                                  ),
                                ),
                                height: 40,
                                child: TextField(
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 12,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                      hintText: "Infosys",
                                      hintStyle: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Experience',
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Color.fromRGBO(0, 0, 0, 0.7),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey[300],
                                  ),
                                ),
                                height: 40,
                                child: TextField(
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 12,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                      hintText: "2-5years",
                                      hintStyle: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Salary',
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Color.fromRGBO(0, 0, 0, 0.7),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey[300],
                                  ),
                                ),
                                height: 40,
                                child: TextField(
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 12,
                                      color: Colors.black),
                                  decoration: InputDecoration(
                                      hintText: "\$2000",
                                      hintStyle: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontSize: 12,
                                          color: Colors.grey),
                                      border: InputBorder.none),
                                ),
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
            Container(
              color: Color.fromRGBO(0, 0, 0, 0.7),
              height: 40,
              width: MediaQuery.of(context).size.width / 1,
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Verify()));
                },
                child: Text(
                  'Submit',
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
    );
  }
}
