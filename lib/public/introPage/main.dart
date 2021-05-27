import 'package:PaySit/public/signIn/main.dart';
import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.pexels.com/photos/574645/pexels-photo-574645.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260'),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: Text(
                  'Jobify',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color.fromRGBO(255, 0, 0, 1),
                      fontSize: 35,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FlatButton(
                    height: 45,
                    color: Color.fromRGBO(255, 0, 0, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child: Text(
                      "WELCOME 'FIND A JOB'",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
