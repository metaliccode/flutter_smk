import 'package:flutter/material.dart';
import 'package:flutter_training/dasar/dasar_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          // contoh navigation
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DasarFlutter(),
                ),
              );
            },
            child: const Text('Dasar Flutter'),
          ),
        ),
        Center(
          // contoh navigation dengan mendaftarkan route di main.dart
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/chatty');
            },
            child: const Text('Ke halaman Chatty'),
          ),
        ),
      ],
    );
  }
}


// debugPrint('tombol ditekan');
// Navigator.push(
//   context,
//  MaterialPageRoute(
//     builder: (context) => const DasarFlutter(),
//   ),
// );