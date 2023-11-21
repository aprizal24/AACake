import 'package:flutter/material.dart';

class TextHome extends StatelessWidget {
  const TextHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('Menu',
        style: TextStyle(
            fontFamily: 'Varela', fontSize: 42.0, fontWeight: FontWeight.bold));
  }
}
