import 'package:PaySit/employer/confirmPayment/main.dart';
import 'package:PaySit/employer/orderHistory/main.dart';
import 'package:flutter/material.dart';

class PaymentDetails extends StatefulWidget {
  @override
  _PaymentDetailsState createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment Detail',
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
                  MaterialPageRoute(builder: (context) => Orderhistory()));
            }),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: ListView(
                  children: [
                    Text(
                      'Card Number',
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        color: Colors.grey[700],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: TextFormField(
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        decoration: InputDecoration(
                          hintText: "Card Number",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                        ),
                        cursorColor: Colors.teal,
                        cursorHeight: 23,
                        textAlignVertical: TextAlignVertical.center,
                      ),
                    ),
                    Divider(
                      color: Colors.grey[350],
                      thickness: 1,
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 10),
                      child: Row(
                        children: [
                          Flexible(
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 14,
                              ),
                              decoration: InputDecoration(
                                hintText: "Expiry Date",
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                                border: InputBorder.none,
                              ),
                              cursorColor: Colors.teal,
                              cursorHeight: 23,
                              textAlignVertical: TextAlignVertical.center,
                            ),
                          ),
                          Flexible(
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 14,
                              ),
                              decoration: InputDecoration(
                                hintText: "CVV",
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                                border: InputBorder.none,
                              ),
                              cursorColor: Colors.teal,
                              cursorHeight: 23,
                              textAlignVertical: TextAlignVertical.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey[350],
                      thickness: 1,
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 10),
                      child: TextFormField(
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        decoration: InputDecoration(
                          hintText: "Card Holder Name",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                        ),
                        cursorColor: Colors.teal,
                        cursorHeight: 23,
                        textAlignVertical: TextAlignVertical.center,
                      ),
                    ),
                    Divider(
                      color: Colors.grey[350],
                      thickness: 1,
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 35),
                          child: Checkbox(
                              value: checkBoxValue,
                              activeColor: Colors.teal[700],
                              onChanged: (bool newValue) {
                                setState(() {
                                  checkBoxValue = newValue;
                                });
                              }),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                  ),
                                  child: Text(
                                    'QuikPay',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        color: Colors.grey[700]),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Save this card information to my BookMyTickets\naccount and make faster payments',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 11,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Color.fromRGBO(0, 0, 0, 0.7),
                height: 40,
                width: MediaQuery.of(context).size.width / 1,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ConfirmPayment()));
                  },
                  child: Text(
                    'Pay₹100',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
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
