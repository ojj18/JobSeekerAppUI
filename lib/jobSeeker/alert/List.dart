import 'package:PaySit/employer/jobDetails/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class AlertList extends StatelessWidget {
  AlertList({Key key, this.alert_data, this.index}) : super(key: key);
  var alert_data;
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Card(
        elevation: 10,
        child: InkWell(
          child: Container(
            height: 130,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '' + alert_data[index]["designation"],
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[800]),
                      ),
                      Text(
                        '' + alert_data[index]["vacancy"],
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[800]),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            FontAwesome.bookmark_o,
                            color: Colors.grey[350],
                            size: 19,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '' + alert_data[index]["time"],
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontFamily: 'Montserrat',
                                fontSize: 13),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            MaterialIcons.place,
                            color: Colors.grey[350],
                            size: 19,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '' + alert_data[index]["location"],
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontFamily: 'Montserrat',
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Text(
                    '' + alert_data[index]["jobDesc"],
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontFamily: 'Montserrat',
                        fontSize: 12),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        FontAwesome.tags,
                        color: Colors.grey[350],
                        size: 19,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '' + alert_data[index]["jobSkill"],
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontFamily: 'Montserrat',
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => JobDetail1()));
          },
        ),
      ),
    );
  }
}
