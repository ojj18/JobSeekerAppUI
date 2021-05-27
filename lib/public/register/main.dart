import 'package:PaySit/public/signIn/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    bool checkBoxValue = false;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1491975474562-1f4e30bc9468?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Color.fromRGBO(0, 0, 0, 0.5), BlendMode.hardLight),
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              leading: IconButton(
                  icon: Icon(
                    CupertinoIcons.back,
                    size: 20,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  }),
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            body: ListView(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Center(
                          child: Text(
                            'Register Now',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Column(
                          children: [
                            Center(
                              child: Text(
                                "Millions of Job. Find yours",
                                style: TextStyle(
                                    color: Colors.grey[350],
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 25, left: 25),
                    child: Row(
                      children: [
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Colors.white, // Your color
                          ),
                          child: Checkbox(
                              value: checkBoxValue,
                              activeColor: Colors.teal[700],
                              onChanged: (bool newValue) {
                                setState(() {
                                  checkBoxValue = newValue;
                                });
                              }),
                        ),
                        Text(
                          'Member',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontSize: 13,
                            //fontWeight: FontWeight.w600
                          ),
                        ),
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Colors.white, // Your color
                          ),
                          child: Checkbox(
                              value: checkBoxValue,
                              activeColor: Colors.teal[700],
                              onChanged: (bool newValue) {
                                setState(() {
                                  checkBoxValue = newValue;
                                });
                              }),
                        ),
                        Text(
                          'Employer',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontSize: 13,
                            //fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, right: 25, left: 25),
                    child: Text(
                      'User Name',
                      style: TextStyle(
                        color: Colors.grey[350],
                        fontFamily: 'Montserrat',
                        fontSize: 13,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 25,
                      left: 25,
                    ),
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                              hintText: "johndoe",
                              hintStyle: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                              ),
                              border: InputBorder.none),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 25, left: 25, bottom: 20),
                    child: Divider(
                      height: 0,
                      color: Colors.grey[350],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2, right: 25, left: 25),
                    child: Text(
                      'Email',
                      style: TextStyle(
                        color: Colors.grey[350],
                        fontFamily: 'Montserrat',
                        fontSize: 13,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 25,
                      left: 25,
                    ),
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                              hintText: "johndoe@gmail.com",
                              hintStyle: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                              ),
                              border: InputBorder.none),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 25, left: 25, bottom: 20),
                    child: Divider(
                      height: 0,
                      color: Colors.grey[350],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2, right: 25, left: 25),
                    child: Text(
                      'Password',
                      style: TextStyle(
                        color: Colors.grey[350],
                        fontFamily: 'Montserrat',
                        fontSize: 13,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 25,
                      left: 25,
                    ),
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                              hintText: "********",
                              hintStyle: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                              ),
                              border: InputBorder.none),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 25, left: 25, bottom: 20),
                    child: Divider(
                      height: 0,
                      color: Colors.grey[350],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2, right: 25, left: 25),
                    child: Text(
                      'Re-type Password',
                      style: TextStyle(
                        color: Colors.grey[350],
                        fontFamily: 'Montserrat',
                        fontSize: 13,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 25,
                      left: 25,
                    ),
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                              hintText: "********",
                              hintStyle: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                              ),
                              border: InputBorder.none),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 25, left: 25, bottom: 5),
                    child: Divider(
                      height: 0,
                      color: Colors.grey[350],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25, left: 25),
                    child: Row(
                      children: [
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Colors.white, // Your color
                          ),
                          child: Checkbox(
                              value: checkBoxValue,
                              activeColor: Colors.teal[700],
                              onChanged: (bool newValue) {
                                setState(() {
                                  checkBoxValue = newValue;
                                });
                              }),
                        ),
                        Text(
                          'I accept the terms & conditions',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontSize: 13,
                            //fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, left: 25, right: 25),
                    child: FlatButton(
                      height: 60,
                      minWidth: MediaQuery.of(context).size.width / 1.1,
                      color: Colors.black.withOpacity(0.8),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: FlatButton(
                        child: Text(
                          'Already have an account? SignIn',
                          style: TextStyle(
                            color: Colors.grey[350],
                            fontFamily: 'Montserrat',
                            fontSize: 13,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignIn()));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
