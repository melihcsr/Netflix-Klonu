import 'package:flutter/material.dart';
import 'package:movie_project/50m2.dart';
import 'package:movie_project/anaSayfa.dart';
import 'package:movie_project/movies.dart';
import 'package:movie_project/neverhave.dart';
import 'package:movie_project/peaky.dart';
import 'package:movie_project/sabrina.dart';
import 'package:movie_project/search.dart';
import 'package:movie_project/strangerthings.dart';
import 'package:movie_project/therain.dart';

class AnaSayfa2 extends StatefulWidget {
  const AnaSayfa2({Key? key}) : super(key: key);

  @override
  _AnaSayfa2State createState() => _AnaSayfa2State();
}

class _AnaSayfa2State extends State<AnaSayfa2> {
  var secilenIndeks = 0;
  var sayfaListesi = [AnaSayfa(), Search(), Movies()];

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    var ekranYuksekligi = ekranBilgisi.size.height;
    var ekranGenisligi = ekranBilgisi.size.width;
    Color c = const Color(0xff021424);

    var diziler = [
      "50m2",
      "Peaky Blinders",
      "Stranger Things",
      "The Rain",
      "Sabrina"
    ];
    var fotolar = [
      "foto8.png",
      "peaky.jpg",
      "foto7.jpg",
      "foto9.jpeg",
      "foto1.jpg"
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: ekranGenisligi,
              height: ekranYuksekligi / 1.4,
              child: Image.asset(
                "images/foto9.jpeg",
                fit: BoxFit.cover,
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 45,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 42),
                      child: Text(
                        "My List",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 75, top: 10),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    onPressed: () {
                      print("butona basildi");
                    },
                    icon: Icon(Icons.play_arrow),
                    label: Text("Play"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 65, top: 11),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.info_outline),
                        color: Colors.white,
                        iconSize: 35,
                      ),
                      Text(
                        "Info",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, left: 10),
                  child: Text(
                    "Top Picks For You",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Peaky()));
                    },
                    child: Container(
                      width: ekranGenisligi / 2.5,
                      child: Image.asset(
                        "images/peaky.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StrangerThings()));
                    },
                    child: Container(
                      width: ekranGenisligi / 2.6,
                      child: Image.asset(
                        "images/foto7.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TheRain()));
                    },
                    child: Container(
                      width: ekranGenisligi / 2.3,
                      child: Image.asset(
                        "images/foto9.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Sabrina()));
                    },
                    child: Container(
                      width: ekranGenisligi / 2.4,
                      child: Image.asset(
                        "images/foto1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Birinci()));
                    },
                    child: Container(
                      width: ekranGenisligi / 2.5,
                      child: Image.asset(
                        "images/foto8.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NeverHave()));
                    },
                    child: Container(
                      width: ekranGenisligi / 2.8,
                      child: Image.asset(
                        "images/foto2.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
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
