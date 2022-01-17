import 'dart:io';

import 'package:flutter/material.dart';
import 'package:movie_project/anaSayfa.dart';
import 'package:movie_project/loginPage.dart';
import 'package:movie_project/neverhave.dart';
import 'package:movie_project/sabrina.dart';
import 'package:movie_project/strangerthings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    var ekranYuksekligi = ekranBilgisi.size.height;
    var ekranGenisligi = ekranBilgisi.size.width;
    Color c = const Color(0xff021424);

    int secilenIndeks = 0;

    var sayfaListesi = ["sayfa2", "sayfa3", "sayfa4", "sayfa5"];

    return Scaffold(
      backgroundColor: c,
      body: LoginPage(),
    );
  }
}
