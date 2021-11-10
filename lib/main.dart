import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Demo landing page !',
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
    return Text('Hello world');
    //Add a container and provide a linear gradient.
    //basically use different shades of same color.
    // return Container(
    //   decoration: BoxDecoration(
    //       gradient: LinearGradient(colors: [
    //     Colors.white,
    //     Colors.blue
    //   ])),
    //   child: Scaffold(
    //     backgroundColor: Colors.transparent,
    //     body: SingleChildScrollView(
    //       child: Column(
    //         children: <Widget>[
    //           Text('Column1'),
    //           Text('Column2')
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
