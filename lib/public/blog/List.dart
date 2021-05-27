import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class BlogList extends StatelessWidget {
  BlogList({Key key, this.blog_data, this.index}) : super(key: key);
  var blog_data;
  int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        elevation: 10,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 0.3,
          ),
          child: Container(
            padding: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.grey[400],
                ),
                borderRadius: BorderRadius.circular(6)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                        image: NetworkImage(
                          '' + blog_data[index]["image"],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '' + blog_data[index]["title"],
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 13.5,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(0, 0, 0, 0.7)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9.5, right: 10, top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        FontAwesome.bookmark_o,
                        color: Colors.grey[400],
                        size: 16,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '' + blog_data[index]['date'],
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontFamily: 'Montserrat',
                            fontSize: 10),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        MaterialIcons.place,
                        color: Colors.grey[400],
                        size: 16,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '' + blog_data[index]['comment'],
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontFamily: 'Montserrat',
                            fontSize: 10),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 9.5, top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        MaterialCommunityIcons.calendar_clock,
                        color: Colors.grey[400],
                        size: 17,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '' + blog_data[index]['blogSchedule'],
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontFamily: 'Montserrat',
                            fontSize: 10),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9, top: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '' + blog_data[index]["desc"],
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 12,
                          height: 1.7,
                          color: Colors.grey[600]),
                    ),
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
