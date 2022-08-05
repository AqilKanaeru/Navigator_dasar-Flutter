import 'package:flutter/material.dart';

class chngenme extends StatefulWidget {
  const chngenme({Key? key}) : super(key: key);

  @override
  State<chngenme> createState() => _chngenmeState();
}

class _chngenmeState extends State<chngenme> {
  @override
  TextEditingController Contentnew = new TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Name'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: Contentnew,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Change Name',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, Contentnew.text);
                },
                child: Text('Confirm')),
          ],
        ),
      ),
    );
  }
}
