import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class LatestBlog extends StatelessWidget {
  LatestBlog({Key key, this.latestblog_data, this.index}) : super(key: key);
  var latestblog_data;
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 230,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 140,
              width: 230,
              child: Image(
                image: NetworkImage(
                  '' + latestblog_data[index]["image"],
                ),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                '' + latestblog_data[index]["title"],
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 12,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  MaterialCommunityIcons.calendar_clock,
                  color: Colors.grey[400],
                  size: 19,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "" + latestblog_data[index]["jobTime"],
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 11,
                    color: Colors.grey[400],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 6,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 28,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    "READ MORE",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      color: Colors.white,
                      fontSize: 10,
                    ),
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
