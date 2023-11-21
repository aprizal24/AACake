import 'package:demo_modul2/app/data/data_chifron.dart';
import 'package:flutter/material.dart';

class TextChif extends StatelessWidget {
  final Cake_chiffron cake;
  const TextChif(this.cake);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Rp ${cake.harga}',
      style: const TextStyle(
          color: Color(0xFFCC8053), fontFamily: 'varela', fontSize: 14.0),
    );
  }
}
