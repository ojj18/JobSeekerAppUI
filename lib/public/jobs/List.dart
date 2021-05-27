import 'package:PaySit/public/jobDetails/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class JobList extends StatelessWidget {
  JobList({Key key, this.job_data, this.index}) : super(key: key);
  var job_data;
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
      child: Expanded(
        child: Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 15),
                  child: Text(
                    '' + job_data[index]['designation'],
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color.fromRGBO(0, 0, 0, 0.7),
                      fontWeight: FontWeight.w600,
                    ),
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
                            '' + job_data[index]['time'],
                            style: TextStyle(
                                color: Colors.grey,
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
                            '' + job_data[index]['location'],
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Montserrat',
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                  ),
                  child: Text(
                    '' + job_data[index]['jobDesc'],
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesome.tags,
                        color: Colors.grey[350],
                        size: 19,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '' + job_data[index]['jobSkill'],
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontFamily: 'Montserrat',
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: FlatButton(
                    height: 40,
                    color: Color.fromRGBO(0, 0, 0, 0.7),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => JobDetails()));
                    },
                    child: Text(
                      'Apply Now',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Similar extends StatelessWidget {
  Similar({Key key, this.latest_data, this.index}) : super(key: key);
  var latest_data;
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
      child: Expanded(
        flex: 1,
        child: Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Image(
                      image: NetworkImage(
                        '' + latest_data[index]["image"],
                      ),
                      height: 60,
                      width: 60,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '' + latest_data[index]["jobDesignation"],
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            color: Color.fromRGBO(0, 0, 0, 0.7),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '' + latest_data[index]["companyTitle"],
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey[300],
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
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
                            '' + latest_data[index]["jobTime"],
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              color: Colors.grey,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '' + latest_data[index]["postTime"],
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          color: Colors.grey,
                          fontSize: 11,
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
    );
  }
}
