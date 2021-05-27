import 'package:PaySit/public/jobDetails/main.dart';
import 'package:PaySit/public/verify/main.dart';
import 'package:flutter/material.dart';

class Postjob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Post a Job',
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
                          "JOB",
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
                                'Job Title',
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
                                      hintText: "Project Manager",
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
                                'Job Location',
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
                                      hintText: "Location",
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
                                'Job Type',
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
                                      hintText: "Full Time",
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
                                'Job Catergory',
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
                                      hintText: "PHP.Web Designer",
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
                                'Education Level',
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
                                      hintText: "B.E",
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
                                'User Mail Id',
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
                                      hintText: "johndoe@gmail.com",
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
                                      hintText: "Enter firm name",
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
                                'Firm Website',
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
                                      hintText: "http://",
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
                                "Description",
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
                                      hintText: "Your previous experience",
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
                                "About Firm",
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
                                      hintText: "About company",
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
