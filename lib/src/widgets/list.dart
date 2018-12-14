import 'package:flutter/material.dart';
import '../models/photo_model.dart';

class list extends StatelessWidget{
  final List<photo_model> photos  ;
  list(this.photos);
  Widget build(context){
    return ListView.builder(
        itemCount: photos.length,
        itemBuilder: (context,index){
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.brown)
            ),
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Image.network(photos[index].imageurl),
                Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(photos[index].title),
                )
              ],
            ),
          );
        }
    );
  }
}