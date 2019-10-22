import 'package:flutter/material.dart';
import './tabs/tab1.dart' as row1;

void main(){
  runApp(new MaterialApp(
    title: "Tab Bar",
    home: new Home(),
    
  ));
}

//stf
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
TabController controller;

  @override
  void initState() {
    controller=new TabController(vsync: this,length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(backgroundColor: Colors.amberAccent, 
      title: new Text("Daftar Elektronik"),
      // bottom: new TabBar(
      //   controller: controller,
      //   tabs: <Widget>[
      //     new Tab(icon: new Icon(Icons.home,),text: "tab1",),
      //     new Tab(icon: new Icon(Icons.headset),text: "tab1",),
      //     new Tab(icon: new Icon(Icons.radio),text: "tab1",),
      //     new Tab(icon: new Icon(Icons.smartphone),text: "tab1",),
      //   ],
      // ),
      ),

      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new row1.HalamanSatu(),
          new row1.HalamanSatu(),
          new row1.HalamanSatu(),
          new row1.HalamanSatu(),
        ],
      ),

      bottomNavigationBar: new Material(
        color: Colors.amber,
        child:  new TabBar(
        controller: controller,
        tabs: <Widget>[
          new Tab(icon: new Icon(Icons.home,),text: "tab1",),
          new Tab(icon: new Icon(Icons.headset),text: "tab1",),
          new Tab(icon: new Icon(Icons.radio),text: "tab1",),
          new Tab(icon: new Icon(Icons.smartphone),text: "tab1",),
        ],
      ),

      ),
    );
  }
}

