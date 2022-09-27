import 'package:flutter/material.dart';
import 'package:submission1/masukLayar1.dart';
import 'package:submission1/gVar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Rental Mobil Jakarta',
          style: TextStyle(color: Colors.amber),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(143, 49, 9, 37),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: [Colors.purple, Color.fromARGB(255, 255, 139, 7)])),
        child: ListView.builder(
          itemBuilder: (context, index) {
            final DetailCar place = detailCar[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(
                    pdetail1: place,
                    mark: '',
                  );
                }));
              },
              child: Card(
                color: Colors.black,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Image.network(place.imageUrls),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              place.name,
                              style: const TextStyle(
                                  fontSize: 16.0, color: Colors.white),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              place.merk,
                              style: TextStyle(color: Colors.amber),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: detailCar.length,
        ),
      ),
    );
  }
}
