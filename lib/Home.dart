import 'dart:ffi';

import 'package:aqil_project/Change%20name.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final String name;
  const Home({Key? key, required this.name}) : super(key: key);

  @override
  State<Home> createState() => _HomeState(name);
}

class _HomeState extends State<Home> {
  String name;
  _HomeState(this.name);
  @override
  TextEditingController halamn2pesan = new TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome $name'),
            ElevatedButton(
                onPressed: () async {
                  String cn = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => chngenme()),
                  );
                  setState(() {
                    name = cn;
                  });
                },
                child: Text('ChangeName')),
          ],
        ),
      ),
    );
  }
}
