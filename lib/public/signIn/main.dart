import 'package:PaySit/public/forgotPasswd/main.dart';
import 'package:PaySit/public/homePage/main.dart';
import 'package:PaySit/public/introPage/main.dart';
import 'package:PaySit/public/signUp/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hexcolor/hexcolor.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1491975474562-1f4e30bc9468?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Color.fromRGBO(0, 0, 0, 0.5), BlendMode.hardLight),
            )),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              leading: IconButton(
                  icon: Icon(
                    CupertinoIcons.back,
                    size: 20,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Intro()));
                  }),
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            body: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Center(
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Center(
                            child: Text(
                              'Millions of Job. Find yours',
                              style: TextStyle(
                                  color: Colors.grey[350],
                                  fontFamily: 'Montserrat',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, right: 25, left: 25),
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
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                            decoration: InputDecoration(
                                hintText: "johndoe@gmail.com",
                                hintStyle: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                ),
                                border: InputBorder.none),
                          ),
                          Divider(
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, right: 25, left: 25),
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
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                            decoration: InputDecoration(
                                hintText: "********",
                                hintStyle: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                ),
                                border: InputBorder.none),
                          ),
                          Divider(
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2, right: 10),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgotPasswd()));
                            },
                            child: Text(
                              'Forgot your password?',
                              style: TextStyle(
                                color: Colors.grey[350],
                                fontFamily: 'Montserrat',
                                fontSize: 13,
                              ),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 25, right: 25),
                      child: FlatButton(
                        height: 55,
                        minWidth: MediaQuery.of(context).size.width / 1.1,
                        color: Colors.black.withOpacity(0.8),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Text(
                          'Sign In',
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
                        top: 10,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: FlatButton(
                          child: Text(
                            'Don\'t have an account? SignUp',
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
                                    builder: (context) => SignUp()));
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Center(
                        child: Text(
                          'OR',
                          style: TextStyle(
                            color: Colors.grey[350],
                            fontFamily: 'Montserrat',
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        bottom: 40,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: HexColor("#3a559f"),
                                borderRadius: BorderRadius.circular(5)),
                            height: 50,
                            width: 50,
                            child: IconButton(
                                icon: Icon(FontAwesome.facebook),
                                onPressed: () {}),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: HexColor("#4faaf0"),
                                borderRadius: BorderRadius.circular(5)),
                            height: 50,
                            width: 50,
                            child: IconButton(
                                icon: Icon(FontAwesome.twitter),
                                onPressed: () {}),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: HexColor("#dd4b39"),
                                borderRadius: BorderRadius.circular(
                                  5,
                                )),
                            height: 50,
                            width: 50,
                            child: IconButton(
                                icon: Icon(FontAwesome.google_plus),
                                onPressed: () {}),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
