import 'package:flutter/material.dart';
import 'day.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My plans"),
        ),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed:  () {Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Day()),
          );
                 },
                child: Text('Mikhail, are you ready to Begin the New Day'),
        ),
      )
    );
  }
}
