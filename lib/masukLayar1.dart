import 'package:submission1/masukLayar2.dart';
import 'package:flutter/material.dart';
import 'package:submission1/gVar.dart';

var iTextStyle = const TextStyle(fontFamily: 'Oxygen', color: Colors.amber);

class DetailScreen extends StatelessWidget {
  final DetailCar pdetail1;

  const DetailScreen({Key? key, required this.pdetail1, required String mark})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 214, 79, 238),
              Color.fromARGB(255, 122, 10, 250)
            ])),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Center(
                    child: Image.network(pdetail1.imageUrls),
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
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Text(
                  pdetail1.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.amber,
                    fontSize: 30.0,
                    fontFamily: 'Staatliches',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        IconButton(
                          color: Colors.amber,
                          icon: const Icon(Icons.calendar_month_outlined),
                          padding: const EdgeInsets.all(8),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return detail2(pdetail2: pdetail1, mark1: '');
                            }));
                          },
                        ),
                        Text(
                          pdetail1.jadualSewa,
                          style: iTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          color: Colors.amber,
                          icon: const Icon(Icons.access_time),
                          padding: const EdgeInsets.all(8),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return detail2(
                                pdetail2: pdetail1,
                                mark1: '',
                              );
                            }));
                          },
                        ),
                        Text(
                          pdetail1.waktu,
                          style: iTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          color: Colors.amber,
                          icon: const Icon(Icons.attach_money_outlined),
                          padding: const EdgeInsets.all(8),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return detail2(
                                pdetail2: pdetail1,
                                mark1: '',
                              );
                            }));
                          },
                        ),
                        Text(
                          pdetail1.startPrice,
                          style: iTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //   ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  pdetail1.spesifikasi,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.amber,
                    fontSize: 16.0,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: pdetail1.imageAsset.map((lambda) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(lambda),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    //);
  }
}
