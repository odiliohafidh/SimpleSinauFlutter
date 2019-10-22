import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    title: "Cobs Aja Hal Awal",
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        backgroundColor: Colors.grey[100],
       appBar: new AppBar(
         backgroundColor: Colors.red[800],
         leading: new Icon(Icons.home),
         title: new Center(child: new Text("H777"),),
         actions: <Widget>[
           new Icon(Icons.search)
         ],
       ),
       body: new Container(
         child: new Column(
           children: <Widget>[ 
             new Icon(Icons.local_pizza,size:70.0,color: Colors.pink,),
             new Row(
               children: <Widget>[
                 new Icon(Icons.local_pizza,size:70.0,color: Colors.pink,),
                 new Icon(Icons.local_pizza,size:70.0,color: Colors.pink,),
                 new Icon(Icons.local_pizza,size:70.0,color: Colors.pink,),
               ],
             ),
             new Icon(Icons.local_pizza,size:70.0,color: Colors.pink,)
           ],
         ),
       ),
      );
    }
}