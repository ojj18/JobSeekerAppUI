import 'package:PaySit/public/signIn/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPasswd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1491975474562-1f4e30bc9468?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignIn()));
              }),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 150),
                    child: Center(
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'We send you a password via Mobile',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        color: Colors.grey[350],
                      ),
                    ),
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
                  Flexible(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 5,
                        left: 25,
                        right: 25,
                      ),
                      child: FlatButton(
                        height: 50,
                        minWidth: MediaQuery.of(context).size.width / 1.1,
                        color: Colors.black.withOpacity(0.8),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignIn()));
                        },
                        child: Text(
                          'Send',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    ]));
  }
}
