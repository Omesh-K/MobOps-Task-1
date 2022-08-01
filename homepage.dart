import 'package:flutter/material.dart';
import 'package:mobops_task1/namelist.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textController = TextEditingController();
  List userName = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center
            children: const [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Name',
                  border: OutlineInputBorder(),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    userName.add(_textController.text);
                  });
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context),{
                      return const ListPage();
                    },)
                  );
                  _textController.clear();
                },
                child: Text('ADD'),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
