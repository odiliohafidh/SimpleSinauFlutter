import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        body: new Container(//id=kotak
          color: Colors.blue[900],
          height: 100.0,
          child: new Center(
            child: new Text(
              "H7uuu",
              style: new TextStyle(
              color: Colors.white,
              fontFamily: "Serif",
              fontSize: 20.0),),
          ),
        ),
      );
    }
}