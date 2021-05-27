import 'package:PaySit/public/homePage/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
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
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: ListView(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 450,
                maxHeight: double.infinity,
              ),
              child: Card(
                elevation: 20,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 10, top: 20),
                      child: Text(
                        '           Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sit amet massa nisl. Nam eget nisi in dolor laoreet bibendum. Ut at maximus felis.',
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(0, 0, 0, 0.7),
                            height: 1.5),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 10, top: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lorem ipsum dolor\nsit amet, consectetur\nadipiscing elit. Nam\neget nisi in dolor\nlaoreet bibendum. Ut\nat maximus felis. Duis\nvolutpat pretium urn\nut ullamcorper. In eu\nlobortis neque.',
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 12,
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                                height: 1.7),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://images.pexels.com/photos/346885/pexels-photo-346885.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 10, top: 20),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sit amet massa nisl. Nam eget nisi in dolor laoreet bibendum.Ut at maximus felis.Duis volutpat pretium urna ut ullamcorper.',
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(0, 0, 0, 0.7),
                            height: 1.5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
