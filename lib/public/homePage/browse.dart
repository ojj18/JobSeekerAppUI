import 'package:PaySit/public/jobs/main.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Browse extends StatelessWidget {
  Browse({Key key, this.browse_data, this.index}) : super(key: key);
  var browse_data;
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 150,
        child: Card(
          elevation: 10,
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  height: 70,
                  image: AssetImage(
                    '' + browse_data[index]["image"],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: HexColor("" + browse_data[index]["color"]),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '' + browse_data[index]["field"],
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(0, 0, 0, 0.7)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('' + browse_data[index]["opening"],
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 11,
                              color: Colors.grey,
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Job()));
            },
          ),
        ),
      ),
    );
  }
}
