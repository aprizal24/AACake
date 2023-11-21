import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 80, left: 160),
      child: const Text(
        'Profile',
        style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w800,
            color: Colors.orange),
      ),
    );
  }
}
