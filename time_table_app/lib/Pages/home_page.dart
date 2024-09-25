import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:time_table_app/utils/face.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 12, 65),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Color.fromARGB(255, 206, 206, 206)),
          BottomNavigationBarItem(
              icon: Icon(Icons.graphic_eq),
              label: "Stats",
              backgroundColor: Color.fromARGB(255, 247, 250, 255)),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              label: "Alarm",
              backgroundColor: Color.fromARGB(255, 234, 234, 234)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Container(
              height: height * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(25))),
              child: Column(
                children: [
                  SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 0.2,
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(10)),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Hi, Puspraj !",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 30),
                                ),
                                Text(
                                  "25 Sep, 2024",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 59, 252, 25)),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: width * 0.40,
                            ),
                            Container(
                              height: height * 0.08,
                              width: width * 0.15,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(212, 63, 10, 255),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Icon(
                                Icons.notifications_on_rounded,
                                color: Color.fromARGB(255, 255, 255, 255),
                                size: 50,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.015,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: width * 0.035),
                          padding: EdgeInsets.only(left: 15, right: 2),
                          height: height * 0.07,
                          width: width * 0.91,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(212, 63, 10, 255),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(30))),
                          child: Row(
                            children: [
                              SizedBox(
                                height: height * 0.1,
                                width: width * 0.8,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Radhe Radhe Seach Bar",
                                      hintStyle: TextStyle(color: Colors.white),
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color: Colors.white,
                                      )),
                                  // enabled: true,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 18),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.0529),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: width * 0.15,
                            ),
                            Text(
                              "How was your day Today?",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      const Color.fromARGB(255, 243, 243, 243)),
                            ),
                            SizedBox(
                              width: width * 0.15,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width * 0.2,
                          height: height * 0.03,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            EmotionFace(
                              face: "😩",
                            ),
                            SizedBox(width: 12),
                            EmotionFace(
                              face: "🙂",
                            ),
                            SizedBox(width: 12),
                            EmotionFace(
                              face: "😄",
                            ),
                            SizedBox(width: 12),
                            EmotionFace(
                              face: "😅",
                            ),
                            SizedBox(width: 12),
                            EmotionFace(
                              face: "😂",
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45), topRight: Radius.circular(45)),
              child: Container(
                height: height * 0.6,
                width: width * 1,
                color: Color.fromARGB(255, 188, 188, 188),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: Text(
                        "Today's Schedule/Activity to Do",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                          color: Color.fromRGBO(255, 255, 255, 1)),
                      margin: EdgeInsets.only(left: 10, right: 10, top: 25),
                      child: ListTile(
                        leading: Icon(
                          Icons.notifications,
                          size: 40,
                        ),
                        title: Center(
                          child: Text(
                            "Wake-UP",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Center(
                          child: Text(
                            "Timing : 4:00 AM ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        trailing: Icon(
                          Icons.check_box,
                          size: 40,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                          color: Color.fromRGBO(255, 255, 255, 1)),
                      margin: EdgeInsets.only(left: 10, right: 10, top: 25),
                      child: ListTile(
                        leading: Icon(
                          Icons.notification_add,
                          size: 40,
                        ),
                        title: Center(
                          child: Text(
                            "Sasta Nasha/BreakFast",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Center(
                          child: Text(
                            "Timing : 8:00 AM ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        trailing: Icon(
                          Icons.check_box_outline_blank_rounded,
                          size: 40,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                          color: Color.fromRGBO(255, 255, 255, 1)),
                      margin: EdgeInsets.only(left: 10, right: 10, top: 25),
                      child: ListTile(
                        leading: Icon(
                          Icons.notifications_active,
                          size: 40,
                        ),
                        title: Center(
                          child: Text(
                            "Code for New App",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Center(
                          child: Text(
                            "Timing : 8:30 AM - 6:00 pM ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        trailing: Icon(
                          Icons.check_box,
                          size: 40,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                          color: Color.fromRGBO(255, 255, 255, 1)),
                      margin: EdgeInsets.only(left: 10, right: 10, top: 25),
                      child: ListTile(
                        leading: Icon(
                          Icons.notifications,
                          size: 40,
                        ),
                        title: Center(
                          child: Text(
                            "Market Jao",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Center(
                          child: Text(
                            "Timing : 6:30 pM ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        trailing: Icon(
                          Icons.check_box,
                          size: 40,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                          color: Color.fromRGBO(255, 255, 255, 1)),
                      margin: EdgeInsets.only(left: 10, right: 10, top: 25),
                      child: ListTile(
                        leading: Icon(
                          Icons.notification_add,
                          size: 40,
                        ),
                        title: Center(
                          child: Text(
                            "Coding Lecture Dekho",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Center(
                          child: Text(
                            "Timing : 7:00PM-10:00PM ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        trailing: Icon(
                          Icons.check_box,
                          size: 40,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                          color: Color.fromRGBO(255, 255, 255, 1)),
                      margin: EdgeInsets.only(left: 10, right: 10, top: 25),
                      child: ListTile(
                        leading: Icon(
                          Icons.notification_add,
                          size: 40,
                        ),
                        title: Center(
                          child: Text(
                            "Single Hone Ka Dukh \n Manao aur so jao",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Center(
                          child: Text(
                            "Timing : 10:00 PM ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        trailing: Icon(
                          Icons.check_box_outline_blank_rounded,
                          size: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
