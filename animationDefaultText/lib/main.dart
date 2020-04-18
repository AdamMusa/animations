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
         child: selected?Container(
           child: Text('unselected'),
           color:Colors.grey,
           width: selected?300:300,
           height: selected?100:100,
           ):Center(child: Container(
             child: Text('Selected'),
             color:Colors.blue,
            width: selected?300:300,
            height: selected?100:100,
             ),),
         style: TextStyle(
           fontWeight:selected?FontWeight.bold:FontWeight.w800,
           color: selected?Colors.redAccent:Colors.white,
         ),
         textAlign: selected?TextAlign.center:TextAlign.justify,
         duration: Duration(seconds:3),
         curve: selected?Curves.bounceInOut:Curves.easeInBack,
         ),
      )
    );
  }
}
