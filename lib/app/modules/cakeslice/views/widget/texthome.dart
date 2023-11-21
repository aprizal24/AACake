import 'package:demo_modul2/app/data/data_slice.dart';
import 'package:flutter/material.dart';

class TextHome extends StatelessWidget {
  final Cake cake;
  const TextHome(this.cake);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Rp ${cake.harga}',
      style: const TextStyle(
          color: Color(0xFFCC8053), fontFamily: 'varela', fontSize: 14.0),
    );
  }
}
