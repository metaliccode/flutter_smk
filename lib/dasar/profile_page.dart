import 'package:flutter/material.dart';

int item = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: item,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('item ${(index + 1)}'),
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.select_all),
          onTap: () {
            debugPrint('Item yang dipilih ${(index + 1)}');
          },
        );
      },
    );
  }
}
