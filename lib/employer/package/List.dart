import 'package:PaySit/employer/orderHistory/main.dart';
import 'package:flutter/material.dart';

class PackageList extends StatelessWidget {
  PackageList({Key key, this.package_data, this.index}) : super(key: key);
  var package_data;
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10, top: 20),
      child: Card(
        elevation: 10,
        child: Container(
          height: 195,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '' + package_data[index]["Schedule"],
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontFamily: "Montserrat",
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '' + package_data[index]["rate"],
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontFamily: "Montserrat",
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '' + package_data[index]["duration"],
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontFamily: "Montserrat",
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '' + package_data[index]["jobs"],
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontFamily: "Montserrat",
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '' + package_data[index]["post"],
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontFamily: "Montserrat",
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '' + package_data[index]["days"],
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontFamily: "Montserrat",
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                FlatButton(
                  height: 30,
                  color: Color.fromRGBO(0, 0, 0, 0.7),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Orderhistory()));
                  },
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 13,
                      color: Colors.white,
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
