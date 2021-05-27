import 'package:PaySit/employer/employerHome/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact Us',
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
                  MaterialPageRoute(builder: (context) => EmployerHome()));
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
                minHeight: 500,
                maxHeight: double.infinity,
              ),
              child: Card(
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 5, right: 5, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            """         Wipro is a global leader in next-generation digital services and consulting.We enable 
clients in 45 countries to navigate their digital transformation. With over three decades of experience in managing the systems and workings of global enterprises, we expertly steer our clients through their digital journey.""",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 11.5,
                              color: Colors.grey[800],
                              height: 1.7,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 5, right: 165, top: 15),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "We believe we are in a unique position to participate in the strategic journey enterprises are taking to become digital.We have embraced four ideas – scaling agile digital, energizing the core, reskilling our employees and expanding our localization – in our strategy.",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 11.5,
                              color: Colors.grey[600],
                              height: 1.6,
                              wordSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Contact Details",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 15,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Divider(
                          color: Colors.grey[400],
                          height: 5,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 20, top: 20),
                        child: Row(
                          children: [
                            Icon(
                              MaterialIcons.mail_outline,
                              color: Colors.grey[600],
                              size: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "contactus@gmail.com",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 20, top: 20),
                        child: Row(
                          children: [
                            Icon(
                              MaterialIcons.call,
                              color: Colors.grey[600],
                              size: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "1-888-258-683",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5,
                          right: 20,
                          top: 20,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesome.address_card_o,
                              color: Colors.grey[600],
                              size: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "12,Main Street,AnyTown,LDA",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
