import 'dart:async';

import 'package:flutter/material.dart';
import 'package:moviees_app/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/sign-in'),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Text('MOVIEE.OEC',style: primaryTextStyle.copyWith(fontSize: 48,fontWeight: FontWeight.w700),)
      ),
    );
  }
}