import 'package:PaySit/public/jobDetails/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Latest extends StatelessWidget {
  Latest({Key key, this.latest_data, this.index}) : super(key: key);
  var latest_data;
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
      child: Expanded(
        child: Card(
          elevation: 10,
          child: InkWell(
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
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[300],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      children: [
                        Icon(
                          FontAwesome.tags,
                          color: Colors.grey[350],
                          size: 19,
                        ),
                        SizedBox(
                          width: 20,
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
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => JobDetails()));
            },
          ),
        ),
      ),
    );
  }
}
