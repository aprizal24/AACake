import 'package:demo_modul2/app/data/data_chifron.dart';
import 'package:flutter/material.dart';

class TextChif2 extends StatelessWidget {
  final Cake_chiffron cake;
  const TextChif2(this.cake);

  @override
  Widget build(BuildContext context) {
    return Text(
      cake.nama,
      style: const TextStyle(
          color: Color(0xFF575E67), fontFamily: 'varela', fontSize: 14.0),
    );
  }
}
