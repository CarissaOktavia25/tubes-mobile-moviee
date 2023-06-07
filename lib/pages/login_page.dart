import 'package:flutter/material.dart';
import 'package:moviees_app/theme.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget content(){
      return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(children: [
        Text('Login',style: primaryTextStyle.copyWith(fontSize: 36,fontWeight: FontWeight.w700),),
      ],),
    );
    }

    return Scaffold(
      body: SafeArea(child: Container(margin: const EdgeInsets.symmetric(horizontal: 30.0),
      ),
      ),
    );
  }
}