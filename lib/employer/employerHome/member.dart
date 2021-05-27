import 'package:PaySit/employer/member/main.dart';
import 'package:flutter/material.dart';

class Member extends StatelessWidget {
  Member({Key key, this.member_data, this.index}) : super(key: key);
  var member_data;
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('' + member_data[index]["image"]),
                ),
              ),
              height: 80,
              width: 80,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '' + member_data[index]["title"],
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[700],
                  fontFamily: "Montserrat",
                  fontSize: 10),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '' + member_data[index]["desc"],
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Montserrat",
                fontSize: 10,
              ),
            )
          ],
        ),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Candidate()));
        },
      ),
    );
  }
}
