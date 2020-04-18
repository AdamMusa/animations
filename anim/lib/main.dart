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
        child: AnimatedCrossFade(
        firstChild: selected?Container(
          width: selected?100:200,
          height: selected?200:100,
          child: Center(child: Text('animated')),
          color: selected?Colors.red:Colors.green,
        ):Center(child:Text('Oupps')),
        secondChild: Container(
          width: selected?100:200,
          height: selected?200:100,
          child: Center(child: Text('animated')),
          color: selected?Colors.grey:Colors.blueAccent
        ), 
        crossFadeState:CrossFadeState.showFirst,
        duration: Duration(seconds: 3),
        firstCurve: Curves.fastOutSlowIn,
        secondCurve: Curves.fastLinearToSlowEaseIn,
        sizeCurve: Curves.linear
        ),
      )
    );
  }
}
