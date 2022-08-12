// stateful widget
import 'package:flutter/material.dart';
import 'package:flutter_training/dasar/home_page.dart';
import 'package:flutter_training/dasar/profile_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  // ini untuk bottom nav bar
  int currentPage = 0;

  // list untuk halaman yang akan ditampilkan
  List<Widget> pages = const [
    HomePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Training'),
        automaticallyImplyLeading: false,
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
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
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
