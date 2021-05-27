import 'package:PaySit/employer/employerHome/main.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About Us",
          style: TextStyle(
            fontSize: 15,
            fontFamily: "Montserrat",
            color: Colors.black,
          ),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 20,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EmployerHome()));
            }),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://cdn.zeebiz.com/sites/default/files/2018/07/20/46144-wipro-ians.jpg')),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 30, top: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Wipro is a global leader in next-generation digital services and consulting. We enable clients in 45 countries to navigate their digital transformation. With over three decades of experience in managing the systems and workings of global enterprises, we expertly steer our clients through their digital journey. We do it by enabling the enterprise with an AI-powered core that helps prioritize the execution of change.  We also empower the business with agile digital at scale to deliver unprecedented levels of performance and customer delight. Our always-on learning agenda drives their continuous improvement through building and transferring digital skills, expertise, and ideas from our innovation ecosystem.",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 13.9,
                        height: 1.5,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, top: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Beyond business, we have established the Infosys Foundation USA to bridge the digital divide in America. Infosys Foundation in India provides assistance to some of the most economically depressed communities in which we work. In addition, the Infosys Science Foundation awards the Infosys Prize to the most important research of our times in the sciences and the humanities.",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 13.9,
                        height: 1.5,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, top: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "www.infosys.com",
                      style: TextStyle(
                          fontSize: 13.9,
                          fontFamily: "Montserrat",
                          color: Color.fromRGBO(0, 0, 255, 1)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
