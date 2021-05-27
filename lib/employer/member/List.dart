import 'package:flutter/material.dart';

class CandidateList extends StatelessWidget {
  CandidateList({Key key, this.candidate_data, this.index}) : super(key: key);
  var candidate_data;
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
      child: Card(
        elevation: 10,
        child: Container(
            height: 90,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    width: 75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                '' + candidate_data[index]["image"]))),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '' + candidate_data[index]["name"],
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 14,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '' + candidate_data[index]["title"],
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontFamily: "Montserrat",
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '' + candidate_data[index]["desc"],
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontFamily: "Montserrat",
                      ),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
