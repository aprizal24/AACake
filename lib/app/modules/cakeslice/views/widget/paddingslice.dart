import 'package:demo_modul2/app/data/cake_model.dart';
import 'package:flutter/material.dart';

class PaddingSlice extends StatelessWidget {
  final Result cake;

  PaddingSlice(this.cake);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            Icons.favorite,
            color: Color(0xFFEF7532),
          )
        ],
      ),
    );
  }
}
