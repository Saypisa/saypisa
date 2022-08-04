import 'package:flutter/material.dart';

class MyListBuider extends StatefulWidget {
  MyListBuider({Key? key}) : super(key: key);

  @override
  State<MyListBuider> createState() => _MyListBuiderState();
}

class _MyListBuiderState extends State<MyListBuider> {
  @override
  Widget build(BuildContext context) {
    final List<List<String>> pets = <List<String>>[
      ['Dog','Lily'],
      ['Cat','Garfield'],
      ['fish','Bob'],
    ];
    return Material(
      child: ListView.builder(
        itemCount: pets.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text(pets[index][1][0]),
                ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text(pets[index][1]),
                  Text(pets[index][0],
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 10),)
                  ],
                  
                  ),
                  
                  ),
                  Expanded(
                  flex: 2,
                  child: IconButton (onPressed: () => null, icon: Icon(Icons.phone),),
                  ),
            ],
          ),
          );
        },
      ),
    );
  }
}
