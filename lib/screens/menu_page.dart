// stateful widget
import 'package:flutter/material.dart';
import 'package:flutter_training/dasar/home_page.dart';
import 'package:flutter_training/dasar/profile_page.dart';
import 'package:flutter_training/slicing/pages/chatty.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // ini untuk bottom nav bar
  int currentPage = 0;

  // list untuk halaman yang akan ditampilkan
  List<Widget> pages = const [
    HomePage(),
    ProfilePage(),
    Chatty(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: (currentPage == 0) ? Text('Home') : Text('Profile'),
        title: () {
          if (currentPage == 0) {
            return const Text('Halaman Home');
          } else if (currentPage == 1) {
            return const Text('Halaman Profile');
          } else {
            return const Text('Halaman Chatty');
          }
        }(),
      ),
      // Floating Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('tombol ditekan');
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.indigoAccent,
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.chat),
            label: '',
          ),
        ],
        // untuk destinatinatin yang dipilih
        onDestinationSelected: (int index) {
          // debugPrint('destination $index dipilih');
          setState(() {
            currentPage = index;
          });
        },
        // selected index
        selectedIndex: currentPage,
      ),

      // body: const HomePage(),
      body: pages[currentPage],
    );
  }
}
