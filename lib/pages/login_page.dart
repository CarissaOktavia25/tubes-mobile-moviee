import 'package:flutter/material.dart';
import 'package:moviees_app/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Center(
        child: Text(
          'Login',
          style: primaryTextStyle.copyWith(
              fontSize: 38, fontWeight: FontWeight.w700),
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: const EdgeInsets.only(top: 48),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Email',
            hintStyle: primaryTextStyle,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff000000),
              ),
            ),
          ),
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: const EdgeInsets.only(top: 33),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'password',
            hintStyle: primaryTextStyle,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff000000),
              ),
            ),
          ),
        ),
      );
    }

    Widget button(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(top: 32),
    width: double.infinity,
    decoration: BoxDecoration(
      color: primaryColor,
      borderRadius: BorderRadius.circular(8),
    ),
    child: TextButton(
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          '/home',
          (route) => false,
        );
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Berhasil Login'),
            duration: const Duration(seconds: 4),
          ),
        );
      },
      child: Text(
        'Login',
        style: primaryTextStyleButton.copyWith(
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}



    Widget buttonGoogle() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 38),
        padding: const EdgeInsets.symmetric(horizontal: 17),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Image.asset(
                'assets/icons/icon_google.png',
                width: 25,
              ),
              const SizedBox(
                width: 28,
              ),
              Text(
                'Masuk Dengan Google',
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      );
    }

    Widget buttonFacebook() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 38),
        padding: const EdgeInsets.symmetric(horizontal: 17),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Image.asset(
                'assets/icons/icon_facebook.png',
                width: 25,
              ),
              const SizedBox(
                width: 28,
              ),
              Text(
                'Masuk Dengan Google',
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              children: [
                header(),
                emailInput(),
                passwordInput(),
                button(context),
                const SizedBox(
                  height: 30,
                ),
                const Divider(
                  endIndent: 40,
                  indent: 40,
                  thickness: 1,
                  color: Colors.black,
                ),
                buttonGoogle(),
                buttonFacebook()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
