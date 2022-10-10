import 'package:flutter/material.dart';
import 'package:Sub1Resto/data_restaurant.dart';
import 'package:google_fonts/google_fonts.dart';

class HalamanDResto extends StatelessWidget {
  static const nameR1 = '/LR_detail';
  final Restaurant datar;

  const HalamanDResto({Key? key, required this.datar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.black, Colors.black])),
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Hero(
                    tag: datar.pictureId,
                    child: Image.network(
                      datar.pictureId,
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(datar.name,
                        style: GoogleFonts.lobster(
                            color: Colors.amber,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.green,
                          size: 15,
                        ),
                        Expanded(
                          child: Text(' ${datar.city}',
                              style: GoogleFonts.lobster(
                                  color: Colors.blueGrey, fontSize: 15)),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                        Expanded(
                            child: Text(
                          ' ${datar.rating.toString()}',
                          style: GoogleFonts.lobster(
                              fontSize: 15, color: Colors.white),
                        )),
                      ],
                    ),
                    const Divider(
                      color: Colors.amber,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      datar.description,
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.lobster(color: Colors.white),
                    ),
                    const Divider(
                      color: Colors.amber,
                    ),
                    Text(
                      'ID : ${datar.id}',
                      style: TextStyle(color: Colors.white),
                    ),
                    const Divider(
                      color: Colors.amber,
                    ),
                    Text(
                      'Berikut Menu yang ada di ${datar.name}',
                      style: GoogleFonts.lobster(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 224, 169, 1)),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Untuk Makanannya Kami Memiliki',
                      style: GoogleFonts.lobster(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.amber),
                    ),
                    const Divider(color: Colors.amber),
                    GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 2,
                              mainAxisSpacing: 3),
                      itemCount: datar.menus.foods.length,
                      itemBuilder: (BuildContext context, isi) {
                        return Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(7)),
                          child: Text(
                            textAlign: TextAlign.center,
                            datar.menus.foods[isi].name,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Dan Untuk Minumannya',
                      style: GoogleFonts.lobster(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.amber),
                    ),
                    const Divider(
                      color: Colors.amber,
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 2,
                              mainAxisSpacing: 3),
                      itemCount: datar.menus.drinks.length,
                      itemBuilder: (BuildContext context, isi) {
                        return Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(7)),
                          child: Text(
                            textAlign: TextAlign.center,
                            datar.menus.drinks[isi].name,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
