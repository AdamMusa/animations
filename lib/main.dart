import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
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
      appBar: AppBar(
        title: Text('AnimationContainer'),
      ),
      body: GestureDetector(
        onTap:(){
          setState(() {
            selected = !selected;
          });
        },
        child:Center(
          child: AnimatedContainer(
            width: selected?200:100,
            height: selected?100:200,
            color: selected? Colors.red:Colors.blue,
            alignment: selected?Alignment.center:Alignment.topLeft,
            duration: Duration(seconds:2),
            curve: Curves.fastOutSlowIn,
            child: selected?FlutterLogo(size:75):FlutterLogo(size:100),
          ),
        )
      ) 
      
    );
  }
}
