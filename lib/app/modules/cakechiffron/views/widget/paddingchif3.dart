import 'package:flutter/material.dart';

class PaddingChif3 extends StatelessWidget {
  const PaddingChif3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: const [
              Icon(
                Icons.shopping_basket,
                color: Color(0xFFd17E50),
                size: 16,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                'Beli',
                style: TextStyle(
                    fontFamily: 'Varela',
                    color: Color(0xFFd17E50),
                    fontSize: 12),
              ),
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          Row(
            //menabah dan mengurangi belanjaan
            children: const [
              Icon(
                Icons.remove_circle_outline,
                color: Color(0xFFd17E50),
                size: 16,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                //untuk total pesanan
                '3',
                style: TextStyle(
                    fontFamily: 'Varela',
                    color: Color(0xFFd17E50),
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              SizedBox(
                width: 6,
              ),
              Icon(
                Icons.add_circle_outline,
                color: Color(0xFFd17E50),
                size: 16,
              )
            ],
          )
        ],
      ),
    );
  }
}
