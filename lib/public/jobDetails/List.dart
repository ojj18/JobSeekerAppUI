import 'package:flutter/material.dart';

class Employees extends StatelessWidget {
  Employees({Key key, this.employee_data, this.index}) : super(key: key);
  var employee_data;
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      child: Card(
        elevation: 10,
        child: InkWell(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                child: Image(
                  image: NetworkImage('' + employee_data[index]["image"]),
                ),
              ),
              Container(
                height: 50,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '' + employee_data[index]["field"],
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                      ),
                    ),
                    Text(
                      '' + employee_data[index]["openings"],
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 10,
                          color: Colors.grey),
                    )
                  ],
                ),
              ),
            ],
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
