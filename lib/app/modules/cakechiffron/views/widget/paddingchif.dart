import 'package:demo_modul2/app/data/data_chifron.dart';
import 'package:flutter/material.dart';

class PaddingChif extends StatelessWidget {
  final Cake_chiffron cake;
  const PaddingChif(this.cake);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          cake.favorit
              ? const Icon(
                  Icons.favorite,
                  color: Color(0xFFEF7532),
                )
              : const Icon(
                  Icons.favorite_border,
                  color: Color(0xFFEF7532),
                )
        ],
      ),
    );
  }
}
