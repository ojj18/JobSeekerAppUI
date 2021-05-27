import 'package:PaySit/employer/paymentDetails/main.dart';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ConfirmPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Verification',
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
                  MaterialPageRoute(builder: (context) => PaymentDetails()));
            }),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Expanded(
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          MaterialCommunityIcons.check_circle,
                          color: Colors.green,
                          size: 80,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Payment Successfully',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Montserrat",
                              color: Color.fromRGBO(0, 0, 0, 0.7),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              MaterialIcons.mail_outline,
                              color: Colors.grey[600],
                              size: 20,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              'contactus@reactnativeapp4u.com',
                              style: TextStyle(
                                  fontSize: 11.5,
                                  fontFamily: "Montserrat",
                                  color: Colors.grey[600]),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 45),
                          child: Row(
                            children: [
                              Icon(
                                MaterialIcons.call,
                                color: Colors.grey[600],
                                size: 20,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                '+91 9444495566',
                                style: TextStyle(
                                    fontSize: 11.5,
                                    fontFamily: "Montserrat",
                                    color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 45),
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
                                '45/17,Ramavarmapuram,\nNagarcoil,Tamil Nadu 629001',
                                style: TextStyle(
                                    fontSize: 11.5,
                                    fontFamily: "Montserrat",
                                    color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
