import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' show get;
import 'models/photo_model.dart';
import 'widgets/list.dart';
class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyApp();
  }
}

class MyApp extends State<App> {
  int x = 0;
  List<photo_model> photos = [];

  fetchData() async{
    x++;
    var response = await get("https://jsonplaceholder.typicode.com/photos/${x.toString()}");
    var p = photo_model.fromJson(json.decode(response.body));
    print(p.title);

    setState(() {
      photos.add(p);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateless Widget !"),
        ),
        body: list(photos),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: fetchData),
      ),
    );
  }
}
