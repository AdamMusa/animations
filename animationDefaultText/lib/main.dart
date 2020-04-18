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
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body:GestureDetector(
       onTap: (){
         setState(() {
           selected = !selected;
         });
       },
       child: AnimatedDefaultTextStyle(
         child: selected?Text('unselected'):Center(child: Text('Selected'),),
         style: TextStyle(
           fontWeight:selected?FontWeight.bold:FontWeight.w800,
           color: selected?Colors.redAccent:Colors.blue
         ),
         textAlign: selected?TextAlignVertical(y: 20.0):TextAffinity.downstream,
         duration: Duration(seconds:3),
         ),
      )
    );
  }
}
