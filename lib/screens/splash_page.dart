import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_training/slicing/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // logika loading splash
  // caranya dengan menggunakan init state hampir sama dengan constructor
  @override
  void initState() {
    // logika lama durasi spalsh
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamed(
        context,
        // '/root_page',
        '/menu_page',
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),
            CircularProgressIndicator(
              color: whiteColor,
            ),
            const SizedBox(height: 20),
            Text(
              'Loading...',
              style: TextStyle(
                color: whiteColor,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
