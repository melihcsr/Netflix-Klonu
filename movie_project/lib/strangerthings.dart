import 'package:flutter/material.dart';
import 'package:movie_project/AnaSayfa2.dart';
import 'package:movie_project/anaSayfa.dart';

class StrangerThings extends StatefulWidget {
  const StrangerThings({Key? key}) : super(key: key);

  @override
  _StrangerThingsState createState() => _StrangerThingsState();
}

class _StrangerThingsState extends State<StrangerThings> {
  @override
  Widget build(BuildContext context) {
    Color c = const Color(0xff021424);
    var ekranBilgisi = MediaQuery.of(context);
    var ekranYuksekligi = ekranBilgisi.size.height;
    var ekranGenisligi = ekranBilgisi.size.width;
    var secilenIndeks = 0;
    return Scaffold(
      backgroundColor: c,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: ekranGenisligi,
                  height: ekranYuksekligi,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/foto6.jpg"),
                      fit: BoxFit.cover,
                      opacity: 0.4,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AnaSayfa()));
                          },
                          icon: Icon(Icons.arrow_back),
                          color: Colors.white,
                          iconSize: 35,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    width: ekranGenisligi / 2.3,
                    height: ekranYuksekligi / 2.3,
                    child: Image.asset("images/foto5.png"),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: ekranGenisligi / 6.5,
                            right: ekranGenisligi / 7.5,
                            top: ekranYuksekligi / 25),
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          ),
                          onPressed: () {},
                          icon: Icon(Icons.play_arrow),
                          label: Text(
                            "Watch",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: ekranYuksekligi / 25),
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                          onPressed: () {},
                          icon: Icon(
                            Icons.calendar_view_week,
                            color: Colors.black,
                          ),
                          label: Text(
                            "Episodes",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Stranger Things",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "8.7 IMDB - 50m - 2015",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 14),
                        child: Text(
                          "Latest :",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 14, left: 5),
                        child: Text(
                          "Episode 8 (Season 3)",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Text(
                          "When a young boy vanishes, a small town uncovers a mystery insolving secret experiments. Terrifiying super natural forces and one strange girl,",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Genres :",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      Text(
                        " Drama , Mystery , Sci-Fi & Fantacy",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: Text("Companies :",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 5),
                        child: Text(
                          "21 laps entertainment",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
