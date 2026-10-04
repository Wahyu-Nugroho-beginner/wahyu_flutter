import 'package:flutter/material.dart';
import 'package:wahyu_flutter/main.dart';

class Wahyu extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  int jumlah = 0;
  void tambah() {
    setState(() {
      jumlah++;
    });
  }

  void kurang() {
    setState(() {
      if (jumlah > 0) {
        jumlah--;
      }
    });
  }

  void reset() {
    setState(() {
      jumlah = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profil Tri Wahyu Nugroho")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                foregroundImage: AssetImage('images/FOTO KTM.png'),
                radius: 50,
                child: Icon(Icons.person, size: 60),
              ),
              const SizedBox(height: 12),
              const Text(
                'Tri Wahyu Nugroho',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text('Program Studi Sistem Informasi'),
              const SizedBox(height: 24),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      const Text('nilai counter'),
                      Text(
                        '$jumlah',
                        style: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: kurang,
                            child: const Text('-'),
                          ),
                          const SizedBox(width: 8),
                          ElevatedButton(
                            onPressed: tambah,
                            child: const Text('+'),
                          ),
                          const SizedBox(width: 8),
                          OutlinedButton(
                            onPressed: reset,
                            child: const Text("reset"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                jumlah == 0
                    ? 'belum ada penambahan'
                    : 'anda sudah menambah $jumlah kali',
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                child: Text('Flutter Main'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
