import 'package:flutter/material.dart';
import 'package:Sub1Resto/detailResto.dart';
import 'package:Sub1Resto/data_restaurant.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
  static const nameR = '/LR_list';

  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.amberAccent,
              size: 40,
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Maaf Untuk Saat Ini Fitur Tersebut Belum Bisa Digunakan',
                    style:
                        GoogleFonts.lobster(color: Colors.amber, fontSize: 20),
                  ),
                  backgroundColor: Colors.black,
                ),
              );
            },
          ),
        ],
        backgroundColor: Colors.black,
        title: Text(
          'BBQ Restaurant',
          style: GoogleFonts.lobster(
              color: Colors.amberAccent,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: FutureBuilder<String>(
        future: DefaultAssetBundle.of(context)
            .loadString('assets/local_restaurant.json'),
        builder: (context, snapshot) {
          final List<Restaurant> data2 = parseA(snapshot.data);
          return ListView.builder(
            itemCount: data2.length,
            itemBuilder: (context, index) {
              return _builddataRItem(context, data2[index]);
            },
          );
        },
      ),
    );
  }
}

Widget _builddataRItem(BuildContext context, Restaurant datar) {
  return Material(
    color: Colors.black,
    child: Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.white.withOpacity(0.19),
          blurRadius: 19,
          blurStyle: BlurStyle.inner,
        )
      ]),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.8),
                  blurRadius: 1,
                  offset: Offset(10.0, 9.0)),
            ],
          ),
          child: Hero(
            tag: datar.pictureId,
            child: Image.network(
              datar.pictureId,
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
        ),
        onTap: () {
          Navigator.pushNamed(context, HalamanDResto.nameR1, arguments: datar);
        },
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        title: Text(
          datar.name,
          style: GoogleFonts.lobster(color: Colors.amber, fontSize: 18),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.place,
                  color: Colors.green,
                  size: 20,
                ),
                Expanded(
                  child: Text(
                    datar.city,
                    style: GoogleFonts.lobster(
                        color: Colors.blueGrey, fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 1,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
                Expanded(
                  child: Text(
                    datar.rating.toString(),
                    style: GoogleFonts.lobster(color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
