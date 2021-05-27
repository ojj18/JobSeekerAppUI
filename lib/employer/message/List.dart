import 'package:flutter/material.dart';

class MessageList extends StatelessWidget {
  MessageList({Key key, this.message_data, this.index}) : super(key: key);
  var message_data;
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 15, left: 10),
      child: Card(
        elevation: 10,
        child: Container(
          padding: EdgeInsets.only(right: 10),
          height: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                    child: Container(
                      height: 80,
                      width: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  '' + message_data[index]["image"]))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Text(
                          '' + message_data[index]["name"],
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 14,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '' + message_data[index]["title"],
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontFamily: "Montserrat",
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '' + message_data[index]["desc"],
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontFamily: "Montserrat",
                        ),
                      )
                    ],
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 25,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.7),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      'Follow',
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
