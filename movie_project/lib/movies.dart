import 'package:flutter/material.dart';

class Movies extends StatefulWidget {
  const Movies({Key? key}) : super(key: key);

  @override
  _MoviesState createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  Future<List<Filmler>> filmleriGetir() async {
    var filmlerListesi = <Filmler>[];
    var f1 = Filmler(1, "Don't Look Up", "dontlookup.jpg");
    var f2 = Filmler(2, "Parasite", "parasite.jpg");
    var f3 = Filmler(3, "Joker", "joker.jpg");
    var f4 = Filmler(4, "Platform", "theplatform.jpg");
    var f5 = Filmler(5, "Bird Box", "birdbox.jpg");
    var f6 = Filmler(6, "The Revenant", "therevenant.jpg");
    var f7 = Filmler(7, "Inception", "ınception.jpg");
    var f8 = Filmler(8, "John Wick", "johnwick.jpg");
    var f9 = Filmler(9, "Extraction", "extraction.jpg");
    var f10 = Filmler(10, "The Pianist", "thepianist.jpg");
    filmlerListesi.add(f1);
    filmlerListesi.add(f2);
    filmlerListesi.add(f3);
    filmlerListesi.add(f4);
    filmlerListesi.add(f5);
    filmlerListesi.add(f6);
    filmlerListesi.add(f7);
    filmlerListesi.add(f8);
    filmlerListesi.add(f9);
    filmlerListesi.add(f10);
    return filmlerListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
          title: Text(
            "Movies",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: Text(""),
        ),
        body: FutureBuilder<List<Filmler>>(
          future: filmleriGetir(),
          builder: (context, snapshot) {
            if (snapshot.data != null) {
              var filmlerListesi = snapshot.data;

              return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 5,
                  ),
                  itemCount: filmlerListesi!.length,
                  itemBuilder: (context, index) {
                    var film = filmlerListesi[index];
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(bottom: 30, top: 30),
                        child: Card(
                          color: Colors.black,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 200,
                                  height: 330,
                                  child: Image.asset(
                                    "images/${film.film_resim_adi}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                "${film.film_adi}",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                ),
                                onPressed: () {},
                                icon: Icon(Icons.play_arrow),
                                label: Text(
                                  "Watch",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            } else {
              return Center();
            }
          },
        ));
  }
}

class Filmler {
  int film_id;
  String film_adi;
  String film_resim_adi;

  Filmler(this.film_id, this.film_adi, this.film_resim_adi);
}
