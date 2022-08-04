import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  MyListView({Key? key}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ListView(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(bottom: 6),
            height: 50,
            color: Color.fromARGB(255, 249, 248, 247),
            child: Text("WAVE"),
            padding: EdgeInsets.all(10)),
        Container(
          margin: EdgeInsets.only(bottom: 6),
          height: 50,
          color: Color.fromARGB(255, 18, 18, 177),
          child: Text("WAVE"),
          padding: EdgeInsets.all(10),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 6),
          height: 50,
          color: Color.fromARGB(255, 180, 9, 9),
          child: Text("WAVE"),
          padding: EdgeInsets.all(10),
        ),
      ],
    ));
  }
}
