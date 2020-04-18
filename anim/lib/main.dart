import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyHomePage()
));
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body:GestureDetector()
    );
  }
}
