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
  GlobalKey<AnimatedListState> listState = GlobalKey<AnimatedListState>();

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
        child: AnimatedList(
          key: listState,
          itemBuilder: (BuildContext , int index,Animation)=>Container(
            child: selected?Text('unselected'):Text('selected'),
          ),
          initialItemCount: 0,
          scrollDirection: Axis.vertical,
          reverse: true,
          primary: true,
          shrinkWrap: true,
        )
      ),
    );
  }
}
