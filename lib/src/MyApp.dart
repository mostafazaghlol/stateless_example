import 'package:flutter/material.dart';


class App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyApp();
  }

}
class MyApp extends State<App>{
  int x= 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Stateless Widget !"),),
        body: Center(
          child: Text("Hi Stateless !$x"),
        ),
        floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: (){
          setState(() {
            x++;
          });
        }),
      ),
    );

  }

}