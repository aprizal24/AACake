import 'package:flutter/material.dart';

import '../../../../data/data_chifron.dart';

class HeroChif extends StatelessWidget {
  final Cake_chiffron cake;
  const HeroChif(this.cake);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: cake.lnkGambar,
      child: Container(
        height: 90,
        width: 90,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(cake.lnkGambar), fit: BoxFit.contain)),
      ),
    );
  }
}
