import 'package:flutter/material.dart';
import 'package:moviees_app/theme.dart';

class DetailMovie extends StatelessWidget {
  const DetailMovie({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        title: Text(
          'Deskripsi Film',
          style: primaryColorTextStyle.copyWith(
              fontSize: 32, fontWeight: FontWeight.w800),
        ),
        backgroundColor: bgcolor1,
        elevation: 0,
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 26),
        child: Column(
          children: [
            Image.asset(
              'assets/img/banner_detail.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30.0),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgcolor1,
      appBar: header(),
      body: content(),
    );
  }
}
