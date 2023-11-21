import 'package:flutter/material.dart';

class WelcomePageText extends StatelessWidget {
  const WelcomePageText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Selamat Datang di AA Cake Shop!',
      style: TextStyle(
        fontFamily: 'Varela',
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
