import 'package:flutter/material.dart';

class DasarFlutter extends StatefulWidget {
  const DasarFlutter({Key? key}) : super(key: key);

  @override
  State<DasarFlutter> createState() => _DasarFlutterState();
}

class _DasarFlutterState extends State<DasarFlutter> {
  // ini state awal ketika dijalankan filenya
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dasar Flutter'),
        // untuk menghilangkan tombol leading
        automaticallyImplyLeading: false,
        // custom leading
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
            // Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              debugPrint('info');
            },
          ),
        ],
      ),

      // body untuk diisi content
      // Colum, Row, dan Container
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/logo1.png'),
            const SizedBox(height: 20),
            const Text('Dasar Flutter'),
            const SizedBox(height: 20),
            const Divider(
              color: Colors.black,
            ),
            Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(20),
              // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              // padding: const EdgeInsets.only(
              //   left: 20,
              //   right: 20,
              //   bottom: 20,
              // ),
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Text Widget',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Elevated, Outlined, Text Button
            // RaisedButton(onPressed: onPressed) -> ini versi dulu
            ElevatedButton(
              // ini untuk style button
              style: ElevatedButton.styleFrom(
                // if tenarry
                // (kondisi) ? (true) : (false)
                // if(){}else{}
                primary: isSwitch ? Colors.green : Colors.blue,
              ),
              onPressed: () {
                debugPrint('Elevated Button');
              },
              child: const Text(
                'Elevated Button',
              ),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Outlined Button');
              },
              child: const Text(
                'Outlined Button',
              ),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Text Button');
              },
              child: const Text(
                'Text Button',
              ),
            ),
            // Gesture Detector, Row
            GestureDetector(
              onTap: () {
                debugPrint('Gesture Detector');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.favorite, color: Colors.blue),
                  Text('Row Widget'),
                  Icon(Icons.favorite, color: Colors.blue),
                ],
              ),
            ),
            // Switch
            Switch(
              value: isSwitch, //false
              onChanged: (bool newValue) {
                setState(() {
                  isSwitch = newValue;
                });
              },
            ),
            // Image.network('https://reqres.in/img/faces/7-image.jpg'),
            Image.network('https://reqres.in/img/faces/7-image.jpg'),
          ],
        ),
      ),
    );
  }
}
