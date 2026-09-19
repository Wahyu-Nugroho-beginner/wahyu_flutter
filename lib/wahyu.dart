import 'package:flutter/material.dart';
import 'package:wahyu_flutter/main.dart';

class Wahyu extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Mahasiswa',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.lightBlue)),
      home: const Beranda(title: 'Profil Tri Wahyu Nugroho'),
    );
  }
}

class Beranda extends StatefulWidget {
  const new({super.key, required this.title});
  final String title;
  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.cyan, title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Container(
              width: 200,
              height: 200,
              padding: EdgeInsets.only(bottom: 20),
              child: Image.asset('images/FOTO PBAK.jpg'),
            ),
            Text(
              style: TextStyle(fontSize: 30, color: Colors.indigo),
              'TRI WAHYU NUGROHO',
            ),
            Text(style: TextStyle(fontSize: 20), '701240078'),
            Text(style: TextStyle(fontSize: 20), 'SISTEM INFORMASI'),
            Text(
              style: TextStyle(fontSize: 20),
              'UIN SULTAN THAHA SAIFUDDIN JAMBI',
            ),
            Text(style: TextStyle(fontSize: 20), 'PEMROGRAMAN MOBILE'),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => MyApp())),
                );
              },
              child: Text('Main Flutter'),
            ),
          ],
        ),
      ),
    );
  }
}
