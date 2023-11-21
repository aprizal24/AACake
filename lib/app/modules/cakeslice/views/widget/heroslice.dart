import 'package:demo_modul2/app/data/cake_model.dart';
import 'package:demo_modul2/app/data/data_slice.dart';
import 'package:flutter/material.dart';

class HeroSlice extends StatelessWidget {
  final Result cake;
  HeroSlice(this.cake);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: cake.image,
      child: Container(
        height: 90,
        width: 90,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        // image: DecorationImage(
        //     image: AssetImage(cake.image), fit: BoxFit.contain)),
        child: Image.network(cake.image),
      ),
    );
  }
}
