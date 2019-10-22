import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    title: "Cobs Aja Hal Awal",
    home: new HalamanSatu(),
    routes: <String,WidgetBuilder>{
      '/HalSatu':(BuildContext context)=> new HalamanSatu(),
      '/HalDua':(BuildContext context)=> new HalamanDua(),
    },
  ));
}

class HalamanSatu extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(title: new Text("Card Parsing"),),
        body: new Center(
          child: new IconButton(
                icon: new Icon(Icons.headset,size: 50.0,color: Colors.blue,),
                onPressed: (){
                  Navigator.pushNamed(context, '/HalDua');
                },
              ),
        ),
      );
    }
}


class HalamanDua extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(title: new Text("Card Parsing 2"),),
        body: new Container(
          child: new Column(
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.speaker,size: 50.0,color: Colors.red[199],),
                 onPressed: (){
                  Route route = MaterialPageRoute(builder: (context) => HalamanSatu());
                  Navigator.pushReplacement(context, route);
                  // Navigator.pushNamed(context, '/HalSatu');
                },
              )
            ],
          ),
        ),
      );
    }
}


