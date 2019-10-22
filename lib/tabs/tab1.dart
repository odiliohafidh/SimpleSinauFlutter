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
        body: new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new CardSaya(icon: Icons.local_pizza,teks: "Stadar Kompetensi",warnaIcon: Colors.black,),
              new CardSaya(icon: Icons.favorite,teks: "Stadar Kompetensi",warnaIcon: Colors.black,),
              new CardSaya(icon: Icons.local_movies,teks: "Stadar Kompetensi",warnaIcon: Colors.black,),
              new CardSaya(icon: Icons.close,teks: "Stadar Kompetensi",warnaIcon: Colors.black,),
              

            ],
          ),
        ),
      );
    }
}


class CardSaya extends StatelessWidget{

  CardSaya ({this.icon,this.teks,this.warnaIcon});
  final IconData icon;
  final String teks;
  final Color warnaIcon;

    @override
    Widget build(BuildContext context) {
      return new Container(

        child:  
            new Card(
              child: new Column(
                children: <Widget>[
                  new Icon(icon,size: 50.0,color: warnaIcon,),
                new Text(teks,style: new TextStyle(fontSize: 13.0),),
                ],
              ),
            ),
      );
    }
}