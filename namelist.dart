import 'package:flutter/material.dart';
import 'homepage.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return const ListTile(title: Text(userName[]));
      },
    );
  }
}
