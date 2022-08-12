import 'package:flutter/material.dart';
import 'package:flutter_training/dasar/root_page.dart';
import 'package:flutter_training/screens/menu_page.dart';
import 'package:flutter_training/screens/splash_page.dart';
import 'package:flutter_training/slicing/pages/chatty.dart';

void main() {
  runApp(const MyApp());
}

// stateless widget
// ini adalah widget yang tidak bisa diupdate atau tidak ada perubahan state
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.green,
        // ini style untul belajar slicing
        // intial fonts global
        fontFamily: 'Poppins',
      ),
      // home: const RootPage(),
      // home: const Chatty(),
      // home: const MenuPage(),
      // ini untuk pendaftaran route
      routes: {
        '/': (context) => const SplashPage(),
        '/root_page': (context) => const RootPage(),
        '/menu_page': (context) => const MenuPage(),
        '/chatty': (context) => const Chatty(),
      },
    );
  }
}
