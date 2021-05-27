import 'package:PaySit/employer/jobDetails/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class JobList1 extends StatelessWidget {
  JobList1({Key key, this.job1_data, this.index}) : super(key: key);
  var job1_data;
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12, right: 15),
                          child: Text(
                            '' + job1_data[index]['designation'],
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color.fromRGBO(0, 0, 0, 0.7),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12, right: 15),
                          child: Text(
                            'Wipro Ltd.,',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                              color: Color.fromRGBO(0, 0, 0, 0.7),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: 50,
                        width: 50,
                        child: Image(
                            image: NetworkImage(
                                'https://sites.google.com/site/mulchandsen/_/rsrc/1280217388336/management-stories/wiprologoitsmeaning/WNC_Logo_HR.jpg?height=1522&width=1186')),
                      ),
                    )
                  ],
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
                            '' + job1_data[index]['time'],
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
                            '' + job1_data[index]['location'],
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
                    '' + job1_data[index]['jobDesc'],
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
                        '' + job1_data[index]['jobSkill'],
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
                              builder: (context) => JobDetail1()));
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
