import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Danau Toba',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Sumatera Utara, Indonesia',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          const Icon(Icons.star, color: Colors.red),
          const SizedBox(width: 4),
          const Text('41'),
        ],
      ),
    );

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
        'Danau Toba adalah danau vulkanik terbesar di Indonesia dan Asia Tenggara '
        'yang terletak di Provinsi Sumatera Utara '
        'Terbentuk dari letusan dahsyat Gunung Toba ribuan tahun lalu, '
        'danau ini dikelilingi perbukitan hijau dengan Pulau Samosir di tengahnya,'
        'menjadikannya destinasi wisata alam yang indah,'
        'tempat pelestarian geologi, dan pusat kebudayaan Batak Toba.\n\n'
        'Nisa Eka Kholifaturrizkiah_362458302018',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Praktikum 4',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout')),
        body: ListView(
          children: [
            Image.asset('assets/Danau-Toba.png',
                width: 1024, height: 682, fit: BoxFit.cover),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
     ),
);
}
}
