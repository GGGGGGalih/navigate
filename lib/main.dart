import 'package:flutter/material.dart';
import 'secondpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String name = "Galih Cahya Kusuma";
    TextEditingController textfortosend = TextEditingController();
    return MaterialApp(
      initialRoute: '/secondpage',
      routes: {
        '/secondpage': (context) => secondpage(
              textFromController: name,
              textFromField: textfortosend.text,
              key: null,
            ),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation Route"),
        ),
        body: Builder(
          builder: (context) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: textfortosend,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "isi di sini"),
                ),
                MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/secondpage');
                    },
                    color: Colors.blue,
                    child: Text("Ke hal 2",
                        style: TextStyle(color: Colors.white))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
