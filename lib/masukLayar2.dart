import 'package:flutter/material.dart';
import 'package:submission1/depanLayar.dart';
import 'package:submission1/gVar.dart';

class detail2 extends StatefulWidget {
  @override
  final DetailCar pdetail2;

  const detail2({super.key, required this.pdetail2, required String mark1});

  @override
  State<detail2> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<detail2> {
  String? day;
  String? satu;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Pilih Waktu'),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 214, 79, 238),
              Color.fromARGB(255, 122, 10, 250)
            ])),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: DropdownButton<String>(
                isExpanded: true,
                dropdownColor: Colors.black,
                items: const <DropdownMenuItem<String>>[
                  DropdownMenuItem<String>(
                    value: 'Hari Pertama',
                    child: Text(
                      'Senin',
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Hari Kedua',
                    child: Text(
                      'Selasa',
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Hari Ketiga',
                    child: Text(
                      'Rabu',
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Hari Keempat',
                    child: Text(
                      'Kamis',
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Hari Kelima',
                    child: Text(
                      'Jumat',
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
                value: day,
                hint: const Text(
                  'Mau Hari Apa',
                  style: TextStyle(color: Colors.white),
                ),
                onChanged: (String? value) {
                  setState(() {
                    day = value;
                  });
                },
              ),
            ),
            Container(
              child: Column(children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    dropdownColor: Colors.black,
                    items: const <DropdownMenuItem<String>>[
                      DropdownMenuItem<String>(
                        value: '1',
                        child: Text(
                          '09.00 - 12.00',
                          style: TextStyle(color: Colors.amber),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: '2',
                        child: Text(
                          '12.00 - 15.00',
                          style: TextStyle(color: Colors.amber),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: '3',
                        child: Text(
                          '15.00 - 18.00',
                          style: TextStyle(color: Colors.amber),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: '4',
                        child: Text(
                          '18.00 - 21.00',
                          style: TextStyle(color: Colors.amber),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: '5',
                        child: Text(
                          '21.00 - 00.00',
                          style: TextStyle(color: Colors.amber),
                        ),
                      ),
                    ],
                    value: satu,
                    hint: const Text(
                      'Mulai Jam Berapa',
                      style: TextStyle(color: Colors.white),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        satu = value;
                      });
                    },
                  ),
                ),
              ]),
            ),
            ElevatedButton(
                child: const Text("Setuju"),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Terimakasih Atas Pilihannya'),
                      backgroundColor: Colors.black,
                    ),
                  );
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const MainScreen();
                    },
                  ));
                })
          ],
        ),
      ),
    );
  }
}
