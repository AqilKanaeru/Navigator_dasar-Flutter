import 'package:aqil_project/Home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  TextEditingController Nama = new TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Masukkan Nama Anda'),
            TextField(
              controller: Nama,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Masukkan Nama Anda',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Home(
                              name: Nama.text,
                            )),
                  );
                },
                child: Text('Login')),
          ],
        ),
      ),
    );
  }
}
