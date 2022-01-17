import 'package:flutter/material.dart';
import 'package:movie_project/50m2.dart';
import 'package:movie_project/AnaSayfa2.dart';
import 'package:movie_project/movies.dart';
import 'package:movie_project/neverhave.dart';
import 'package:movie_project/peaky.dart';
import 'package:movie_project/sabrina.dart';
import 'package:movie_project/search.dart';
import 'package:movie_project/strangerthings.dart';
import 'package:movie_project/therain.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  var secilenIndeks = 0;
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    var ekranYuksekligi = ekranBilgisi.size.height;
    var ekranGenisligi = ekranBilgisi.size.width;

    var sayfaListesi = [AnaSayfa2(), Search(), Movies()];
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
      body: sayfaListesi[secilenIndeks],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow),
            label: "Movies",
          ),
        ],
        currentIndex: secilenIndeks,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.red.shade900,
        onTap: (index) {
          setState(() {
            secilenIndeks = index;
          });
        },
      ),
    );
  }
}
