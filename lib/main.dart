import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});
  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          // saol 1
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // soal 2
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Pantai Tanjung Penyu',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Malang, Indonesia',
                style: TextStyle(color: Colors.grey[500]),
              ),
            ],
          ),
        ),
        // soal 3
        Icon(Icons.star, color: Colors.red[500]),
        const Text('41'),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Pantai Tanjung Penyu adalah salah satu di antara pantai pariwisata yang berada di Jalur Lintas Selatan mulai dari Pantai Kondang Merak, Balekambang, Nganteb hingga Sendang Biru dan Sendiki. Pantai Tanjung Penyu Mas menjadi salah satu tempat wisata yang populer di Malang, Jawa Timur.'
        'Pantai ini mempunyai pasir putih yang begitu lembut dan air biru kehijauan yang jernih. Selain itu, di Pantai Tanjung Penyu Mas juga terdapat pepohonan yang rindang dan membuat suasana disini begitu sejuk dan terasa nyaman serta pemandangan yang seperti di Raja Ampat karena terdiri dari perbukitan yang cantik yang akan jadi Bali kedua.'
        'Mariska Putri 2341760051 🙂.',
        softWrap: true,
      ),
    );
    return MaterialApp(
      title: 'Flutter layout: Nama dan NIM Anda',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        body: Center(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Image.asset(
                'images/pantai.png',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              titleSection,
              buttonSection,
              textSection,
            ],
          ),
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
