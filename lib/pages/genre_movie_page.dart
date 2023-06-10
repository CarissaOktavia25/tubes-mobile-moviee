import 'package:flutter/material.dart';
import 'package:moviees_app/theme.dart';

class GenreMovie extends StatelessWidget {
  const GenreMovie({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Row(
        children: [
          Expanded(
            child: Text(
              'Genre Movie',
              style: primaryTextStyle.copyWith(
                fontSize: 20, fontWeight: FontWeight.w700
              ),
            ),
            const SizedBox(
              height: 18,
            ),
          ),
        ],
      ),
    };
  }

  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 30.0)
      child: ListView(
        children : [
          const 
        ]
      )
  ),
}