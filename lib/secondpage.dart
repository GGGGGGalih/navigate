import 'package:flutter/material.dart';

class secondpage extends StatelessWidget {
  final String textFromController;
  final String textFromField;
  const secondpage(
      {Key? key, required this.textFromController, required this.textFromField})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.blue,
              child: Text("kembali", style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
