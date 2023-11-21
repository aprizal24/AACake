import 'package:demo_modul2/app/data/cake_model.dart';
import 'package:demo_modul2/app/data/data_slice.dart';
import 'package:flutter/material.dart';

class TextHome2 extends StatelessWidget {
  final Result cake;
  const TextHome2(this.cake);

  @override
  Widget build(BuildContext context) {
    return Text(
      cake.title,
      style: const TextStyle(
          color: Color(0xFF575E67), fontFamily: 'varela', fontSize: 14.0),
    );
  }
}
